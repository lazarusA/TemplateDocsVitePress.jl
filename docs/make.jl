using Documenter
using DocumenterVitepress
using TemplateDocsVitePress

makedocs(; sitename="TemplateDocsVitePress", authors="Lazaro Alonso",
    modules=[TemplateDocsVitePress],
    checkdocs=:all,
    format=DocumenterVitepress.MarkdownVitepress(),
    draft=false,
    source="src",
    build=joinpath(@__DIR__, "docs_site/docs")
    )

deploydocs(; repo="github.com/lazarusA/TemplateDocsVitePress.git",
    target="docs_site",
    branch = "gh-pages",
    devurl=".",
    devbranch="master")