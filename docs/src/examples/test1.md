```@meta
EditURL = "../../../examples/test1.jl"
```

# Basic examples

```@cardmeta
Title = "Basic examples"
Description = "Basic examples of GeoMakie"
Cover = fig
```

````@example test1
using GLMakie # you could use GLMakie too
````

Surface example

````@example test1
fig = Figure()
ax = Axis(fig[1,1])
lines!(ax, 1:10)
fig
````

---

*This page was generated using [Literate.jl](https://github.com/fredrikekre/Literate.jl).*

