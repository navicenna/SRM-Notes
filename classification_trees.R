p=seq(0, 1, 0.01)


G = 2*p*(1-p)
D = -(p*log(p) + (1-p)*log(p))
ERR = pmin(1-p, p)

#cat("G is:", G, "     D is:", D)

plot(p, D, ylim = c(0,1))
points(p, ERR, col=2)

a1= rnorm(10)
a2= rnorm(10)
a3= rnorm(10)

plot(G)
points(a2, col=2)
points(a3, col=3)
