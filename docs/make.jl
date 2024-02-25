using Documenter
using DocumenterVitepress
using TemplateDocsVitePress

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
    )

deploydocs(; 
    repo="lazarusA/TemplateDocsVitePress.jl",
    target="build", # this is where Vitepress stores its output
    branch = "gh-pages",
    devbranch="master",
    push_preview = true
)