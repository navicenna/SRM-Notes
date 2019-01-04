AR = function(y) {
  return(y*.17+83.39)
}

y=c(96,104,103,103,99,98,103,100,100,102)

ypredict=c()
yactual=y[2:length(y)]

for(i in 1:9) {
    ypredict[i] = AR(y[i])
}

e = yactual - ypredict
ce = e - mean(e)
MSE = sum(ce^2)/7

A=rbind(
  c(0 ,-3), c(-2, -5), c(-3, -5), c(-4, -5), c(-5, 2)
)

B = rbind(
  c(0,0), c(2,1), c(0,4)
)

C = rbind(
  c(0,7), c(3,6), c(6,8), c(7,8), c(10,10)
)

Ap =rbind(
  c(0 ,-3), c(-2, -5), c(-3, -5), c(-4, -5)
)

Bp = rbind(
  c(0,0), c(2,1), c(0,4), c(-5, 2)
)

Cp = rbind(
  c(0,7), c(3,6), c(6,8), c(7,8)
)

before = cluster.wcvar(A) + cluster.wcvar(B) + cluster.wcvar(C)
after = cluster.wcvar(Ap) + cluster.wcvar(Bp) + cluster.wcvar(Cp)




pts = rbind(
c(4,	8),
c(5,	2),
c(5,	6),
c(9,	3),
c(6,	10),
c(7,	9),
c(2,	4),
c(1,	9),
c(7,	3),
c(5,	8)
)
#plot(pts[,1], pts[,2])
sq.distance.matrix(pts)
