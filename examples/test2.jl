# # Basic examples

#=
```@cardmeta
Title = "Basic examples 2"
Description = "Basic examples of GeoMakie 2"
Cover = fig
```
=#

using GLMakie # you could use GLMakie too

# Surface example
fig = Figure()
ax = Axis(fig[1,1])
scatter!(ax, 1:10)
fig