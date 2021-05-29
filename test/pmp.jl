using Plots
using DelimitedFiles
using .PhaseMapping: readsticks, Lorentz, Phase

path = "/home/mingchiang/Desktop/Data/MnTiO-FeTiO/DuncanModifiedFiles/HandCurated_CIFS_MnTiO3-FeTiO3/"
path = path * "sticks.txt"

sticks = readsticks(path, Float64)

phase_1 = Phase(sticks[1], 1.0, 1.0, profile=Lorentz(), width_init=.2)
phase_2 = Phase(sticks[2], 0.5, 1.0, profile=Lorentz(), width_init=.5)
println(size(phase_arr))
phases = Phase.(sticks, )

x = LinRange(8, 45, 1024)
y = phase_1.(x)+phase_2.(x)

pmp.path()
