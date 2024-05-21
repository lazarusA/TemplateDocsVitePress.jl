# Plotting outputs

## GLMakie

````@example GLMakie
using GLMakie
GLMakie.activate!()
meshscatter(rand(Point3f,10); color=rand(10))
````

````@example GLMakie
GLMakie.activate!()
fig, ax, obj = meshscatter(rand(Point3f,10); color=rand(10))
fig
````

## CairoMakie

````@example CairoMakie
using CairoMakie
CairoMakie.activate!(type = "svg")
scatter(rand(Point2f,10); color=rand(10))
````


````@example CairoMakie
CairoMakie.activate!(type = "svg")
fig, ax, obj = scatter(rand(Point2f,10); color=rand(10))
fig
````

````@example CairoMakie
CairoMakie.activate!(type = "png")
fig, ax, obj = scatter(rand(Point2f,10); color=rand(10))
fig
````
