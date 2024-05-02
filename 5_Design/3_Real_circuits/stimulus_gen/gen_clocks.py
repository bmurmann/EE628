# Generates a folder called stim_files/ with spice files for a reset signal and 6 clock signals
# Also performs simulation of the generated spice files (using ngspice) and plots the results
# gen_clocks.spice is manually created for testing the clock generation script

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Define a clock class with name, nodes, and timing information
class PWL_Clock:
    def __init__(self, name, nodeA, nodeB, edge, level, trf):
        self.name = name
        self.nodeA = nodeA
        self.nodeB = nodeB
        self.edge = edge
        self.level = level
        self.transition_time = trf

    # Function to convert level array to time and voltage with rise and fall times
    def convert_to_time_voltage(self):
        time = [self.edge[0]]
        voltage = [self.level[0]]
        for i in range(1, len(self.level)):
            # Add the voltage at the start of the transition
            time.append(self.edge[i]-self.transition_time/2)
            voltage.append(self.level[i-1])
            # Add the voltage at the end of the transition
            time.append(self.edge[i]+self.transition_time/2)
            voltage.append(self.level[i])

        self.time = time
        self.voltage = voltage
        return

    # Write PWL_Clock to a .stim spice file
    # The file name is self.name + '.stim'
    def write_stim(self, path):
        self.convert_to_time_voltage()
        with open(path + self.name + '.stim', 'w') as f:
            # Write the start of the VPWL instance
            f.write(f'V{self.name} {self.nodeA} {self.nodeB} PWL(')
            # Write the time, voltage pairs
            [f.write(f'{t} {self.voltage[i]} ') for i,t in enumerate(self.time)]
            # Write the end of the VPWL instance
            f.write(')\n')
            # Add a dummy resistor to provide a path to ground
            f.write(f'R{self.name} {self.nodeA} {self.nodeB} 1e3\n')

# Create a patterned clock waveform for use with multiple clock channels
def create_clock(N_start, N_stop, N, tper):
    # Create time and level vectors
    edge = []
    level = []
    
    # Leading offset
    for i in range(0, N_start):
        edge.append(i*tper)
        level.append(0)

    # Clock activity
    for i in range(N_start, N_stop):
        edge.append(i*tper)
        level.append(i % 2)

    # Trailing offset
    for i in range(N_stop, N):
        edge.append(i*tper)
        level.append(0)

    return [edge, level]

# Create a reset signal which is held high for N_reset cycles and then low for the remainder up to N total cycles
def create_reset(N_start, N_reset, N, tper):
    # Create time and level vectors
    edge = []
    level = []
    
    # Leading offset
    for i in range(N_start, N_reset):
        edge.append(i*tper)
        level.append(1)

    # Reset activity
    for i in range(N_reset, N):
        edge.append(i*tper)
        level.append(0)

    return [edge, level]

# Function to plot the clocks onto a single figure
def plot_clocks(filename, ck_array):
    # Load waveform data
    df = pd.read_csv(filename, delim_whitespace=True, header=None)
    dfnames = []
    [dfnames.extend(['t'+str(i), ck.name]) for i, ck in enumerate(ck_array)]
    df.columns = dfnames

    # Plot the clock signals
    fig, axs = plt.subplots(len(ck_array), 1, sharex=True)
    fig.suptitle('Transient Response')
    fig.text(0.5, 0.04, 'Time (us)', ha='center')
    for i, ck in enumerate(ck_array):
        axs[i].plot(df['t'+str(i)], df[ck.name], '-', label=ck.name)
        axs[i].set_ylabel(f'{ck.name} (V)')
        axs[i].grid()
    plt.show()

# Create time and level vector for reset signal
[reset_edge, reset_level] = create_reset(0, 90, 1000, 1e-6)

# Create time and level vectors for all clocks (ck1 to ck6)
[ck1_edge, ck1_level] = create_clock(100, 190, 1000, tper=1e-6)
[ck2_edge, ck2_level] = create_clock(200, 290, 1000, 1e-6)
[ck3_edge, ck3_level] = create_clock(300, 390, 1000, 1e-6)
[ck4_edge, ck4_level] = create_clock(400, 490, 1000, 1e-6)
[ck5_edge, ck5_level] = create_clock(500, 590, 1000, 1e-6)
[ck6_edge, ck6_level] = create_clock(600, 690, 1000, 1e-6)

# Create clock objects
ck_array = []
ck_array.append(PWL_Clock('reset', 'reset', 'GND', reset_edge, reset_level, trf=1e-9))
ck_array.append(PWL_Clock('ck1', 'ck1', 'GND', ck1_edge, ck1_level, trf=1e-9))
ck_array.append(PWL_Clock('ck2', 'ck2', 'GND', ck2_edge, ck2_level, trf=1e-9))
ck_array.append(PWL_Clock('ck3', 'ck3', 'GND', ck3_edge, ck3_level, trf=1e-9))
ck_array.append(PWL_Clock('ck4', 'ck4', 'GND', ck4_edge, ck4_level, trf=1e-9))
ck_array.append(PWL_Clock('ck5', 'ck5', 'GND', ck5_edge, ck5_level, trf=1e-9))
ck_array.append(PWL_Clock('ck6', 'ck6', 'GND', ck6_edge, ck6_level, trf=1e-9))

# Write clock objects to files
[ck.write_stim('stim_files/') for ck in ck_array]

# Call ngspice from command line
import os
os.system('ngspice -b gen_clocks.spice')

# Plot the clock signals
plot_clocks("gen_clocks.txt", ck_array)
