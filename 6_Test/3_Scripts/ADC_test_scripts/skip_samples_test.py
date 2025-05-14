
import matplotlib.pyplot as plt
import math
import pandas as pd
import numpy as np

skip = 5

def formatNumberForFileName(number: float) -> str:
    """ formats number to fixed 2 decimal places. Even if the decimal value is 0, it will return two 0s.
    for example 1 or 1.0 will be formatted to 1.00.
    """
    if number == 0:
        return "0.00"
    else:
        return "{:.2f}".format(number)


def getStartIndex(df, clockColumnName, skip=0):
    clk_data = df[clockColumnName].copy()
    skipped = 0
    for index, value in clk_data.items():
        if value == 1 and skipped == skip:
            #add 1 to account because data changes occur on clock fall
            return index + 1
        elif value == 1:
            skipped += 1
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
    
    startIndex = getStartIndex(df, clockColumnName, skip=skip)
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
Vin_max = 1.2
Vin_min = 0.0
Vin_increment = 0.05
Vin = Vin_min
N_Max = 1024


# create a for loop for every power of 2 leading up to N
for i in range(1, int(math.log2(N_Max)) + 1):        
    print("i: ", i, "\n\n")
    N = 2 ** i
    if N < 32:
        continue
    if N > N_Max:
        raise Exception(f"Power of 2: {N} is greater than N: {N_Max}.")

    resultsFileNameBase = f"chip_{chipNumber}/team_{teamNumber}/results_{test}_chip-{chipNumber}_team-{teamNumber}_N-{N}"
    # Create a new CSV file to store the results
    results_df = pd.DataFrame(columns=['Vin', 'Result'])
    results_df.to_csv(resultsFileNameBase+".csv", index=False)

    # Loop through the range of Vin values
    while round(Vin, 2) <= Vin_max:
        formattedVin = formatNumberForFileName(Vin)
        fileName = f"chip_{chipNumber}/team_{teamNumber}/test-{test}_chip-{chipNumber}_team-{teamNumber}_Vin-{formattedVin}.csv"
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
            results_df = pd.read_csv(resultsFileNameBase+".csv")
            new_row = pd.DataFrame({'Vin': [formattedVin], 'Result': [result]})
            results_df = pd.concat([results_df, new_row], ignore_index=True)
            # Save the updated DataFrame to the CSV file
            results_df.to_csv(resultsFileNameBase+".csv", index=False)

        except Exception as e:
            print(e)
            print(f"Error processing file {fileName}: {e}")
        Vin += Vin_increment

    Vin = Vin_min  # reset Vin for the next iteration
    # plot the results. all values of N should be on the same plot and saved at the end. each plot will be color coded and labeled in a legend
    plt.plot(results_df['Vin'], results_df['Result'], marker='o', label=f"N = {N}")
    plt.xlabel('Vin')
    plt.ylabel('Result')
    # add a legend
    plt.xticks(rotation=45)
    plt.title(f"Results for test {test} - Chip {chipNumber} - Team {teamNumber} - N = {N}, Skipped {skip} sample")
    plt.grid()
    plt.legend()
    # Save the plot for each N
    plt.savefig(resultsFileNameBase+".png")
