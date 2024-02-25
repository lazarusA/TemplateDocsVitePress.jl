```@meta
EditURL = "../../literate/example.jl"
```

````@example example
using CairoMakie
fig = Figure(resolution=(700, 700));
heatmap!(Axis(fig[1,1]), rand(100,100))

save("test.png", fig)
````

![image](test.png)

