using Documenter
using DocumenterVitepress
using TemplateDocsVitePress

# ------------------
# Build documentation
# ------------------
makedocs(
    sitename = "TemplateDocsVitePress",
    authors  = "Lazaro Alonso",
    modules  = [TemplateDocsVitePress],
    checkdocs = :all,
    warnonly  = true,

    format = DocumenterVitepress.MarkdownVitepress(
        repo      = "github.com/lazarusA/TemplateDocsVitePress.jl.git",
        devbranch = "master",
        devurl    = "dev",
    ),
)

# ------------------
# Deploy documentation
# ------------------
DocumenterVitepress.deploydocs(
    # SOURCE repo (must match ENV["GITHUB_REPOSITORY"] for previews)
    repo = "github.com/lazarusA/TemplateDocsVitePress.jl.git",

    # TARGET repo for published docs (cross-repo is allowed)
    deploy_repo = "github.com/lazarusA/DeployTemplateDocs.git",

    target    = "build",
    branch    = "gh-pages",
    devbranch = "master",

    # Enable PR previews
    push_preview = true,
)
