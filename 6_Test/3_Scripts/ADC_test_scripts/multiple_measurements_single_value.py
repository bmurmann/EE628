
import matplotlib.pyplot as plt
import math
import pandas as pd
import numpy as np

def formatNumberForFileName(number: float) -> str:
    """ formats number to fixed 2 decimal places. Even if the decimal value is 0, it will return two 0s.
    for example 1 or 1.0 will be formatted to 1.00.
    """
    if number == 0:
        return "0.00"
    else:
        return "{:.2f}".format(number)


def getStartIndex(df, clockColumnName):
    clk_data = df[clockColumnName].copy()
    for index, value in clk_data.items():
        if value == 1:
            #add 1 to account because data changes occur on clock fall
            return index + 1
    raise Exception("start index not found")

def assertSampledAtTwiceFrequency(df, clockColumnName):
    clk_data = df[clockColumnName].copy()

    # remove first row (it is the column names)
    clk_data = clk_data[1:]
    # check if every other clock cycle is 1
    # find the first 1
    for index, value in clk_data.items():
        if value == 1:
            # check every other clock cycle
            for i in range(index, len(clk_data), 2):
                if clk_data[i] != 1:
                    raise Exception("Data not sampled at twice the clock frequency")
            return

def processIDSMData(vhi, vlo, N, fileName, dataColumnName, clockColumnName):
    df = pd.read_csv(fileName, skiprows=7)
    vfs = vhi - vlo
    vmid = vhi - vfs / 2

    print("vhi: ", vhi)
    print("vlo: ", vlo)
    print("N: ", N)
    print('vfs: ', vfs)
    print('vmid: ', vmid)
    
    startIndex = getStartIndex(df, clockColumnName)
    print("start index: ", startIndex)
    # print the start index value
    print("start index value: ", df.iloc[startIndex])
    endIndex = int(startIndex + (N * 2))
    print("end index: ", endIndex)
    # use the index to slice the data and only take the data column
    data_subset = df.iloc[startIndex:endIndex]
    # remove every other entry
    data_subset = data_subset[::2].reset_index(drop=True)

    data = data_subset[dataColumnName].copy()
    csum = np.cumsum(data)
    out = vmid-vfs/2 + np.cumsum(csum) * 2.0/N/(N+1)*vfs
    return out.iloc[-1]

# Example usage

test = "DC"
chipNumber = "1"
teamNumber = "2"
vin = 0.6
N_Max = 1024
number_of_measurements = 100
formattedVin = formatNumberForFileName(vin)

base_path = f"chip_{chipNumber}/team_{teamNumber}"
# create a for loop for every power of 2 leading up to N
for i in range(1, int(math.log2(N_Max)) + 1):        
    print("i: ", i, "\n\n")
    N = 2 ** i
    if N < 32:
        continue
    if N > N_Max:
        raise Exception(f"Power of 2: {N} is greater than N: {N_Max}.")


    vinResultsBaseName = f"{base_path}/results_{test}_chip-{chipNumber}_team-{teamNumber}_N-{N}_Vin-{formattedVin}"
    # Create a new CSV file to store the results
    results_df = pd.DataFrame(columns=['Vin', 'Result'])
    high_results_df = pd.DataFrame(columns=['Vin', 'Result'])
    results_df.to_csv(vinResultsBaseName+".csv", index=False)

    for i in range(0, number_of_measurements):
        print("i: ", i, "\n\n")
        formattedVin = formatNumberForFileName(vin)
        fileName = f"{base_path}/test-{test}_chip-{chipNumber}_team-{teamNumber}_Vin-{formattedVin}_{i}.csv"
        print(f"\n\nProcessing file: {fileName}")
        try:
            result = processIDSMData(
                vhi=0.9,
                vlo=0.3,
                N=N,
                fileName=fileName,
                dataColumnName="idsm_out",
                clockColumnName="clkin_out")
            print(f"Result for Vin={formattedVin}: {result}")
            # Append the result to the DataFrame
            results_df = pd.read_csv(vinResultsBaseName+".csv")
            new_row = pd.DataFrame({'Vin': [formattedVin], 'Result': [result]})
            results_df = pd.concat([results_df, new_row], ignore_index=True)
            # Save the updated DataFrame to the CSV file
            results_df.to_csv(vinResultsBaseName+".csv", index=False)

        except Exception as e:
            print(e)
            print(f"Error processing file {fileName}: {e}")

    # read results from both csv files
    results_df = pd.read_csv(vinResultsBaseName+".csv")
    # plot the results, x axis just going from 0 to 2*number_of_measurements
    x = np.arange(0, number_of_measurements, 1)
    # plot the results
    plt.plot(x, results_df['Result'], label=f"N = {N}", marker='o')
    plt.xlabel('index')
    plt.ylabel('Result')

    # calculate the mean and std and add them to the bottom of the figure
    avg = results_df['Result'].mean()
    std = results_df['Result'].std()
    print(f"Mean: {avg}, Std: {std}")
    # add the mean and std to the plot
    plt.text(0, avg + std, f"Mean: {avg:.2f}\nStd: {std:.2f}", fontsize=10, ha='left', va='bottom')
    
    # add a legend
    plt.xticks(rotation=45)
    plt.title(f"Results for test {test} - Chip {chipNumber} - Team {teamNumber} - N = {N}")
    plt.grid()
    # ensure the legend is labeled by the value of N
    plt.legend()
    # Save the plot for each N
    plt.savefig(f"{base_path}/value-" + str(vin) + "-N-" + str(N) + ".png")
