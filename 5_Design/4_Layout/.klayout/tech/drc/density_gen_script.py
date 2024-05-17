
# This script generates text for density checking which can be integrated into
#  sg13g2_density_monitor.lydrc

dump_file = "density_gen_script_dump.txt"

MetalNumber_Array = ["M1", "M2", "M3", "M4", "M5"]
DensityTarget_Array = [10, 15, 20, 25, 30, 35, 40, 45, 50]

with open(dump_file, "w") as f:
    for i,MetalNumber in enumerate(MetalNumber_Array):
        MetalNumberString = f"Metal{i+1}"
        # Write the checks
        for DensityTarget in DensityTarget_Array:
            template = f"""
    -&gt; do
        {MetalNumber}_density.ext_with_density(0.0 .. 0.{DensityTarget}, 'll')
    end.().output("{MetalNumber}.j.UH{DensityTarget}CHECK", "Min. global {MetalNumberString} density [%] = {DensityTarget}.0")
"""
            f.write(template)

        # Write the actual check which is required by DRC
        template = f"""
    -&gt; do
        {MetalNumber}_density.ext_with_density(0.0 .. 0.{35}, 'll')
    end.().output("{MetalNumber}.j", "Min. global {MetalNumberString} density [%] = {35}.0")

    -&gt; do
        {MetalNumber}_density.ext_with_density(0.{6} .. 1.0, 'll')
    end.().output("{MetalNumber}.k", "Max. global {MetalNumberString} density [%] = {60}.0")
"""
        f.write(template)