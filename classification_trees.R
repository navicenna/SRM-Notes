# Define probabilities
p1=seq(0, 1, 0.008)
p2=1 - p1

G = 2*p1*p2
D = -(p1*log(p1) + p2*log(p2))
ERR = pmin(p1, p2)

#cat("G is:", G, "     D is:", D)

plot(p1, G, ylim = c(0,1))
points(p1, D, col=2)

diff = D - G
# print(c("Diffs", head(diff)))
# print(p1[diff<=0])
# print(head(p1[diff>0]))


n=68000
px=20500
py=9100
fx=seq(0, n-px-py, 1)
fy=n-px-py-fx
nx=px+fx
ny=py+fy
c = (pmin(px, fx) + pmin(py, fy))/n

for(i in length(pts)) {
  1+1
}
