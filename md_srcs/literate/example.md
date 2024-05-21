


```julia
using CairoMakie
CairoMakie.activate!()
fig = Figure(; size=(700, 700));
heatmap!(Axis(fig[1,1]), rand(100,100))
save("test.png", fig)
```



![](test.png)

