```@meta
EditURL = "../../../examples/test3.jl"
```

# Basic examples

```@cardmeta
Title = "Basic examples 2"
Description = "Basic examples of GeoMakie 3"
Cover = fig
```

````@example test3
using GLMakie # you could use GLMakie too
````

Surface example

````@example test3
fig = Figure(; size = (800,600))
ax = Axis(fig[1,1])
heatmap!(ax, 1..2, 1..2, rand(10,10))
fig
````

---

*This page was generated using [Literate.jl](https://github.com/fredrikekre/Literate.jl).*

