# My Climate Model

Insert a short description of your climate code, how to how to use it, and how to contribute to it.

MyClimateModel contains a skeletton to implement a 2D Energy Balance Model (EBM) in Julia based on [Klimakoffer.jl](https://github.com/amrueda/Klimakoffer.jl).

## Installation
If you have not yet installed Julia, please
[follow the instructions for your operating system](https://julialang.org/downloads/platform/).
MyClimateModel works with Julia v1.7.

To obtain MyClimateModel, clone the repository and use the Julia package manager
`Pkg` to install all dependencies:
```shell
git clone git@github.com:klimakoffer/Klimakoffer-skeleton.jl.git MyClimateModel.jl
cd MyClimateModel.jl
julia --project=@. -e 'import Pkg; Pkg.instantiate()'
```
Then, start Julia with the `--project` flag set to your local clone, e.g.,
```shell
julia --project=.
```

## Usage
In the Julia REPL, first load the package
```julia
julia> using MyClimateModel
```
Now you can create the (empty) mesh and model with
```julia
julia> mesh = Mesh()
Mesh() with 128×65 degrees of freedom

julia> model = Model(mesh)
Model() with 128×65 degrees of freedom
```
You can perform the initial tests with
```julia
julia> ]test
```
## Documentation

## License and contributing

MyClimateModel is licensed under the MIT license (see [LICENSE.md](LICENSE.md)).
