using Documenter
using DocumenterVitepress

#cp(joinpath(@__DIR__,"deploy"), joinpath(@__DIR__,"docs/"), force=true)

makedocs(; sitename="TemplateDocsVitepress", authors="Lazaro Alonso",
    modules=[DocumenterVitepress],
    checkdocs=:all,
    format=DocumenterVitepress.MarkdownVitepress(),
    draft=false,
    source="src",
    build=joinpath(@__DIR__, "docs/dev") # dev version
    )

deploydocs(; repo="github.com/lazarusA/TemplateDocsVitePress.jl.git", push_preview=true,
    target="docs", devurl=".", devbranch="master")