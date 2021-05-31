using Plots
using DelimitedFiles
using .PhaseMapping: readsticks, Lorentz, Phase
using .PhaseMapping: pmp_path!, get_ids
using Test

path = "/home/mingchiang/Desktop/Data/MnTiO-FeTiO/DuncanModifiedFiles/HandCurated_CIFS_MnTiO3-FeTiO3/"
path = path * "sticks.txt"

sticks = readsticks(path, Float64)

phase_1 = Phase(sticks[1], 1.0, 1.0, profile=Lorentz(), width_init=.1)
phase_2 = Phase(sticks[2], 0.5, 1.0, profile=Lorentz(), width_init=.2)
#println(size(phase_arr))
phases = Phase.(sticks, profile=Lorentz(), width_init=.2)

x = LinRange(8, 45, 1024)
y = phase_1.(x)+phase_2.(x)

libraries, residuals = pmp_path!(phases, x, y, 2)
ids = get_ids(libraries[2])
@test 1 in ids
@test 2 in ids
@test 0.95<=libraries[2].phases[1].a<=1
@test 0.45<=libraries[2].phases[2].a<=0.55
