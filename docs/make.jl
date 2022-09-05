using Documenter
import Pkg
using MyClimateModel

# Define module-wide setups such that the respective modules are available in doctests
DocMeta.setdocmeta!(MyClimateModel, :DocTestSetup, :(using MyClimateModel); recursive=true)

# Make documentation
makedocs(
    # Specify modules for which docstrings should be shown
    modules = [MyClimateModel],
    # Set sitename to MyClimateModel
    sitename="MyClimateModel.jl",
    # Provide additional formatting options
    format = Documenter.HTML(
        # Disable pretty URLs during manual testing
        prettyurls = get(ENV, "CI", nothing) == "true",
        # Explicitly add favicon as asset
        # assets = ["assets/favicon.ico"],
        # Set canonical URL to GitHub pages URL
        canonical = "https://klimakoffer.github.io/Klimakoffer-skeleton.jl/dev"
    ),
    # Explicitly specify documentation structure
    pages = [
        "Home" => "index.md",
        "Reference" => "reference.md",
        "License" => "license.md"
    ],
    strict = true # to make the GitHub action fail when doctests fail, see https://github.com/neuropsychology/Psycho.jl/issues/34
)

deploydocs(
    repo = "github.com/klimakoffer/Klimakoffer-skeleton.jl",
    devbranch = "main",
    push_preview = true
)
