## WGLMakie and Bonito

````@example wglmakie
using WGLMakie
using Bonito, Markdown
Page(exportable=true, offline=true)
WGLMakie.activate!()
Makie.inline!(true) # Make sure to inline plots into Documenter output!
scatter(1:4, color=1:4)
````