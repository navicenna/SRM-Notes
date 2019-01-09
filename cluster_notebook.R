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
c(2, 5),
c(4, 6),
c(1, 2),
c(8, 3)
)
rownames(pts) = c("x1", "x2", "x3", "x4")

plot(pts, xlim = c(0, max(pts[,1]+2))); 
text(pts, labels=rownames(pts), pos = 4)
sq.distance.matrix(pts)


cluster.wcvar = function(pts) {
  n.points = dim(pts)[1]
  total.var = 0
  for(i in 1:n.points) {
    for(j in 1:n.points) {
      x_i = pts[i,]
      x_j = pts[j,]
      distance = c(dist(rbind(x_i, x_j))^2)
      total.var = total.var + distance
    }
  }
  return(total.var/n.points)
}

A = rbind(c(-8, -6), c(-6, -6), c(-5, -5), 
          c(-4, -4), c(-4, -1), c(-3, -5), 
          c(-1, -1))
B = rbind(c(-8, 7), c(-7, 5), c(-4, 1), 
          c(-4, 5), c(-2, 4), c(-2, 7))
C = rbind(c(1, 0), c(3, -1), c(3, -9), c(4, -4), c(7, -7))
D = rbind(c(1, 2),c(3, 3),c(5, 1),c(7, 1),c(7, 4),c(8, 8))
origin = rbind(c(0,0))
test = rbind(A, origin)

clusters = list(A,B,C,D); results = list()
for(i in 1:length(clusters)) {
  new = rbind(clusters[[i]], origin)
  clusters.temp = clusters
  clusters.temp[[i]] = new
  vars = lapply(clusters.temp, cluster.wcvar)
  number.points = lapply(clusters.temp, function(x) {return(dim(x)[1])})
  vars = unlist(vars); number.points = unlist(number.points)
  rv = cbind(vars, vars*number.points)
  colnames(rv) = c("vars", "TOTAL")
  results[[i]] = rv
}
