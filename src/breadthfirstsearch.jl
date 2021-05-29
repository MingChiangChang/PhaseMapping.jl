# Do breadth-first-search
# Recursive?
struct BreadthFirstSearch{T, CP<:AbstractVector{<:Phase{T}},
	        NP<:AbstractVector{<:Phase{T}},
			PT<:AbstractVector{<:SmoothPattern{T}}, #AS<:AbstractVector{Bool},
			XT<:AbstractVecOrMat, RT<:AbstractVecOrMat, AT<:AbstractVecOrMat,
			NS<:Real, PV<:AbstractVector{T}}

	current_phases::CP
	next_phases::NP
	patterns::PT
	#isactive::AS

	x::XT
	r::RT
	rA::AT

	# prior normal distributions
	noise_std::NS # standard deviation of the noise
	prior_mean::PV # prior mean for a, α, σ
	prior_std::PV # prior std for a, α, σ

	# Parameter for stopping
	# 1. Low residual (good stop)
	# 2. To many extra peaks (bad stop/killed)
	#    Condition: norm(max.(fitted-data)./data) ?
	#    Or is there anything better than 2 norm
	res_thresh::Real
    extra_norm::Real
end

const BFS = BreadthFirstSearch # Aliasing
function BFS(phase::AbstractVector{<:Phase}, x::AbstractVector,
	         y::AbstractVector)
    return
end

function ononon()
	return 3
end
