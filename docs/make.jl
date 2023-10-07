using Documenter
using DocumenterVitepress

makedocs(; sitename="TemplateDocsVitepress", authors="Lazaro Alonso",
    modules=[DocumenterVitepress],
    checkdocs=:all,
    format=DocumenterVitepress.MarkdownVitepress(),
    draft=false,
    source="src", build=joinpath(@__DIR__, "docs"))

deploydocs(; repo="github.com/lazarusA/TemplateDocsVitepress.jl.git", push_preview=true,
    make=() -> run(`npm run docs:build`), target="site", devbranch="master")