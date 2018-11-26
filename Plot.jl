using Plots

f(x) = 100*x - 60
g(x) = 30 - 60*x
h(x) = 0
v(x) = max.(f(x),g(x),h(x))
x = 0:0.1:1

plot(x, f.(x),
    xaxis = ("prob. (mu)", [0.0, 0.5, 0.6, 1.0]),
    yaxis = ("expected value", (-10,40)),
    label = "outdoor")
plot!(x, g.(x),
    label = "indoor")
plot!(x, h.(x),
    label = "none")
plot!(x, v.(x),
    label = "max{o,i,n}")
