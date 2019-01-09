groups = c(0,1,2,3,4,5,6)
cnts = c(1282,2218,1856,801,235,81,7)
total.pols = sum(cnts)
mu = 9720/total.pols
p.group = dpois(lambda=mu, x = groups[0:6])
p.group[7] = 1 - sum(p.group)
n.group = p.group * total.pols

Q1 = sum((cnts-n.group)^2/n.group)
Q2 = sum(cnts^2/n.group) - total.pols
