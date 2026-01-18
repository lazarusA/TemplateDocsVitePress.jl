using Documenter
using DocumenterVitepress
using TemplateDocsVitePress


makedocs(; sitename="TemplateDocsVitePress", authors="Lazaro Alonso",
    modules=[TemplateDocsVitePress],
    checkdocs=:all,
    format=DocumenterVitepress.MarkdownVitepress(
        repo = "https://github.com/lazarusA/TemplateDocsVitePress",
        devbranch = "master",
        devurl = "dev";
    ),
    warnonly = true,
    )

deploydocs(; 
    repo="github.com/lazarusA/DeployTemplateDocs.git",
    deploy_repo="https://github.com/lazarusA/DeployTemplateDocs",
    target="build",
    branch = "gh-pages",
    devbranch="master",
    push_preview = true
)