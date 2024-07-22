using Documenter
using DocumenterVitepress
using TemplateDocsVitePress
using Literate
using OhMyCards

examples = [
    "test1.jl",
    "test2.jl",
    "test3.jl",
    "test4.jl",
    ]
    
example_dir = joinpath(dirname(@__DIR__), "examples")
mkpath(example_dir)

for filename in examples
    file = joinpath(example_dir, filename)
    endswith(file, ".jl") || continue
    Literate.markdown(file, joinpath(@__DIR__, "src", "examples", first(splitdir(filename))); documenter = true)
end


makedocs(; sitename="TemplateDocsVitePress", authors="Lazaro Alonso",
    modules=[TemplateDocsVitePress],
    checkdocs=:all,
    format=DocumenterVitepress.MarkdownVitepress(
        repo = "github.com/lazarusA/TemplateDocsVitePress.jl", # this must be the full URL!
        devbranch = "master",
        devurl = "dev";
    ),
    draft=false,
    source="src", 
    build= "build", 
    warnonly = true,
    plugins = [OhMyCards.ExampleConfig(),],
    )

deploydocs(; 
    repo="lazarusA/TemplateDocsVitePress.jl",
    target="build", # this is where Vitepress stores its output
    branch = "gh-pages",
    devbranch="master",
    push_preview = true
)