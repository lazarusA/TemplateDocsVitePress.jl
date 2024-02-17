using Documenter
using DocumenterVitepress
using TemplateDocsVitePress

makedocs(; sitename="TemplateDocsVitePress", authors="Lazaro Alonso",
    modules=[TemplateDocsVitePress],
    checkdocs=:all,
    format=DocumenterVitepress.MarkdownVitepress(),
    draft=false,
    source="src",
    build=joinpath(@__DIR__, "build")
    )

# We manually obtain the Documenter deploy configuration,
# so we can use it to set Vitepress's settings.
# TODO: make this better / encapsulate it in `makedocs`
# so the user does not need to know!
deploy_config = Documenter.auto_detect_deploy_system()
deploy_decision = Documenter.deploy_folder(
    deploy_config;
    repo="lazarusa/TemplateDocsVitePress",
    devbranch="master",
    devurl = "dev",
    push_preview=true,
)

folder = deploy_decision.subfolder
println("Deploying to $folder")
vitepress_config_file = joinpath(@__DIR__, "build", ".vitepress", "config.mts")
config = read(vitepress_config_file, String)
new_config = replace(config, "base: 'REPLACE_ME_WITH_DOCUMENTER_VITEPRESS_BASE_URL_WITH_TRAILING_SLASH'" => "base: '/TemplateDocsVitePress/$folder/'")
write(vitepress_config_file, new_config)

# Build the docs using `npm` - we are assuming it's installed here!
cd(@__DIR__) do
    run(`npm run docs:build`)
end
touch(joinpath(@__DIR__, "build", ".vitepress", "dist", ".nojekyll"))

deploydocs(; 
    repo="lazarusa/TemplateDocsVitePress",
    target="build/.vitepress/dist", # this is where Vitepress stores its output
    branch = "gh-pages",
    devbranch="master"
)