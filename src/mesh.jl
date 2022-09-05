struct Mesh
    nx::Int                     # Number of DOFs in x (Longitude)
    ny::Int                     # Number of DOFs in y (Latitude)
end

"""
    function Mesh(nx=128)

Constructor for the mesh struct
"""
function Mesh(nx=128)
    if mod(nx,2) != 0
        error("The mesh needs an even number of degrees of freedom in the longitude")
    end

    ny = Int(nx/2+1)
    return Mesh(nx,ny)
end

Base.size(mesh::Mesh) = (mesh.nx, mesh.ny)

function Base.show(io::IO, mesh::Mesh)
    nx, ny = size(mesh)
    print(io, "Mesh() with ", nx, "×", ny, " degrees of freedom")
  end