using Test
using LinearAlgebra
using PhaseMapping
using PhaseMapping: Phase, Gauss
using PhaseMapping: bfs

using Plots

@testset "bfs" begin
    # Load sticks and fake data
    sticks = loadsticks()
    data = loaddata()

    # Default Priors

    profile = Gauss()
    phases = Vector{typeof(Phase(Sticks[1], profile = profile))}(undef, nsticks)
    empty_phases = Vector{typeof(Phase(Sticks[1], profile = profile))}[]


    bfs(empty_phases, phases, data) # default rpior


    # bfs
