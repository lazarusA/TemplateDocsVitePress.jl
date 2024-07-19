````@example WGLMakie
using WGLMakie
using Bonito, Markdown
Page() # for Franklin, you still need to configure
WGLMakie.activate!()
Makie.inline!(true) # Make sure to inline plots into Documenter output!
scatter(1:4, color=1:4)
````