using Test
using MyClimateModel
using Printf

EXAMPLES_DIR = joinpath(pathof(MyClimateModel) |> dirname |> dirname, "examples")

@time @testset "MyClimateModel" begin
  #= 
  test_file = "equilibrium_temperature_1950.jl"
  @testset "$test_file" begin
    println("")
    println("Running ",test_file)
    println("")
    @test_nowarn include(joinpath(EXAMPLES_DIR, test_file))

    @test isapprox(GlobTemp, 14.484963368770806, atol=1e-12)
  end
  =#

  @testset "Printing types to the REPL" begin
    mesh = Mesh()
    @test_nowarn show(stdout, mesh)
    println(stdout)

    model = Model(mesh)
    @test_nowarn show(stdout, model)
    println(stdout)

    println(stdout)
  end
end
