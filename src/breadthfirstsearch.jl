# Do breadth-first-search
# Recursive?
struct BreadthFirstSearch{T, PH<:AbstractVector{<:Phase{T}},
			PT<:AbstractVector{<:SmoothPattern{T}}, AS<:AbstractVector{Bool},
			XT<:AbstractVecOrMat, RT<:AbstractVecOrMat, AT<:AbstractVecOrMat,
			NS<:Real, PV<:AbstractVector{T}}
	phases::PH
	patterns::PT
	isactive::AS

	x::XT
	r::RT
	rA::AT

	# prior normal distributions
	noise_std::NS # standard deviation of the noise
	prior_mean::PV # prior mean for a, α, σ
	prior_std::PV # prior std for a, α, σ

end

const BFS = BreadthFirstSearch
function BFS()
    return
end
