using Literate

get_example_path(p) = joinpath(@__DIR__,".", "literate/", p)
OUTPUT = joinpath(@__DIR__, "src", "literate/")

p = "example.jl"

Literate.markdown(get_example_path(p), joinpath(OUTPUT, dirname(p));
        documenter=true, credit=false)