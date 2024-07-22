```@meta
EditURL = "../../../examples/test2.jl"
```

# Basic examples

```@cardmeta
Title = "Basic examples 2"
Description = "Basic examples of GeoMakie 2"
Cover = fig
```

````@example test2
using GLMakie # you could use GLMakie too
````

Surface example

````@example test2
fig = Figure()
ax = Axis(fig[1,1])
scatter!(ax, 1:10)
fig
````

---

*This page was generated using [Literate.jl](https://github.com/fredrikekre/Literate.jl).*

