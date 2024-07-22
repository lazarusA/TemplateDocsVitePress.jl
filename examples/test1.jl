# # Basic examples

#=
```@cardmeta
Title = "Basic examples"
Description = "Basic examples of GeoMakie"
Cover = fig
```
=#

using GLMakie # you could use GLMakie too

# Surface example
fig = Figure()
ax = Axis(fig[1,1])
lines!(ax, 1:10)
fig