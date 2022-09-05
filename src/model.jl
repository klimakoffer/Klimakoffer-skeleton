
mutable struct Model
  diffusion_coeff::Array{Float64,2}   # Diffusion coefficient: depends on the sine of latitude
  heat_capacity::Array{Float64,2}     # Heat capacity: depends on the geography (land, ocean, ice, etc.)
  albedo::Array{Float64,2}            # Albedo coefficient: depends on the geography (land, ocean, ice, etc.)
  radiative_cooling_co2::Float64      # Constant outgoing long-wave radiation: depends on the CO2 concentration 
  radiative_cooling_feedback::Float64 # Outgoing long-wave radiation (feedback effects): models the water vapor cyces, lapse rate and cloud cover           
end

"""
    function Model(mesh,...)

Constructor for the model struct
"""
function Model(mesh)
  @unpack nx,ny = mesh

  diffusion_coeff = zeros(Float64,nx,ny)
  heat_capacity = zeros(Float64,nx,ny)
  albedo = zeros(Float64,nx,ny)
  radiative_cooling_co2 = 0.0
  radiative_cooling_feedback = 0.0

  return Model(diffusion_coeff, heat_capacity, albedo, radiative_cooling_co2, radiative_cooling_feedback)
end


Base.size(model::Model) = size(model.heat_capacity)

function Base.show(io::IO, model::Model)
  nx, ny = size(model)
  print(io, "Model() with ", nx, "×", ny, " degrees of freedom")
end