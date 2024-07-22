```@meta
EditURL = "../../../examples/test4.jl"
```

# Basic examples

```@cardmeta
Title = "Basic examples 2"
Description = "Basic examples of GeoMakie 4"
Cover = fig
```

````@example test4
using GLMakie # you could use GLMakie too
````

Surface example

````@example test4
fig = Figure(; size = (600,400))
ax = Axis(fig[1,1])
heatmap!(ax, 1..2, 1..2, rand(10,10))
fig
````

---

*This page was generated using [Literate.jl](https://github.com/fredrikekre/Literate.jl).*

