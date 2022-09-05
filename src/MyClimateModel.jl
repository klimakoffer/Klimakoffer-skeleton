module MyClimateModel
# Add needed packages
using UnPack: @unpack
#using LinearAlgebra: lu, ldiv!

export Mesh, Model, compute_equilibrium!

# Include additional files
include("mesh.jl")
include("model.jl")
include("numerics.jl")

end # module
