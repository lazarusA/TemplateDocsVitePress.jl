using Documenter
using DocumenterVitepress

makedocs(; sitename="TemplateDocsVitepress", authors="Lazaro Alonso",
    modules=[DocumenterVitepress],
    checkdocs=:all,
    format=DocumenterVitepress.MarkdownVitepress(),
    draft=false,
    source="src", build=joinpath(@__DIR__, "docs"))

deploydocs(; repo="github.com/lazarusA/TemplateDocsVitePress.jl.git", push_preview=true,
    make=() -> run(`npm run docs:build`), target="docs/.vitepress/dist", devbranch="master")