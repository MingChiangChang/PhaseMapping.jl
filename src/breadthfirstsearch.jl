# Do breadth-first-search
# Recursive?
struct Node{T, CP<:AbstractVector{<:Phase{T}},
	        NP<:AbstractVector{<:Phase{T}},
			PT<:AbstractVector{<:SmoothPattern{T}}, #AS<:AbstractVector{Bool},
			XT<:AbstractVecOrMat, RT<:AbstractVecOrMat, LT::Int,
			AT<:AbstractVecOrMat, NS<:Real, PV<:AbstractVector{T}}

	current_phases::CP
	next_phases::NP
	# patterns::PT
	# isactive::AS

	x::XT
	r::RT
    level::LT
	# prior normal distributions
	noise_std::NS # standard deviation of the noise
	prior_mean::PV # prior mean for a, α, σ
	prior_std::PV # prior std for a, α, σ

	# Parameter for stopping
	# 1. Low residual (good stop)
	# 2. To many extra peaks (bad stop/killed)
	#    Condition: norm(max.(fitted-data)./data) ?
	#    Or is there anything better than 2 norm
	tol::NS

    #extra_norm::Real
end

function Node(phases::AbstractVector{<:Phase}, x::AbstractVector,
	         y::AbstractVector, level::Int,
			 noise_std::AbstractVector, prior_mean::AbstractVector,
			 prior_std::AbstractVector, tol::Real)
    current_phases = Array{Phase}[]
	Node(current_phases, phases, x, y, 0, noise_std,
	    prior_mean, prior_std, tol)
end



function bfs!(node::Node, x, y, depth::Int; tol=1e-3)
    if BFS.
end
