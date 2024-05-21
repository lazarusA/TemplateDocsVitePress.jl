## WGLMakie and Bonito

````@example wglmakie
using WGLMakie
using Bonito, Markdown
Page() # for Franklin, you still need to configure
WGLMakie.activate!()
Makie.inline!(true) # Make sure to inline plots into Documenter output!
scatter(1:4, color=1:4)
````

Another:

````@example wglmakie
N = 60
function xy_data(x, y)
    r = sqrt(x^2 + y^2)
    r == 0.0 ? 1f0 : (sin(r)/r)
end
l = range(-10, stop = 10, length = N)
z = Float32[xy_data(x, y) for x in l, y in l]
surface(
    -1..1, -1..1, z,
    colormap = :Spectral
)
````

do also inline `Page(exportable=true, offline=true)`.

````@example wglmakie
using WGLMakie
using Bonito, Markdown
Page(exportable=true, offline=true)
WGLMakie.activate!()
Makie.inline!(true) # Make sure to inline plots into Documenter output!
scatter(1:4, color=1:4)
````