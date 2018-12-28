genF = function(RSS.trim, RSS.full, q, n, p) {
  F.numerator = (RSS.trim - RSS.full)/q
  F.denominator = RSS.full / (n - p - 1)
  F.statistic = F.numerator / F.denominator
  return(F.statistic)
}
test = genF(100, 91, 2, 200, 4)


euclid = function(x1, x2) {
  squares = (x1 - x2)^2
  distance = sqrt(sum(squares))
  return(distance)
}

logit = function(probability) {
  logitValue = log(probability/(1-probability))
  return(logitValue)
}

autocorr = function(x, lag = 1) {
  m = mean(x)
  a = head(x-m, -lag)
  b = tail(x-m, -lag)
  SS = sum((x-m)^2)
  autocorr = sum(a * b) / SS
  return(autocorr)
}

aic = function(l, p) {
  aic = -2*l + 2*p
  return(aic)
}

bic = function(l, p, n) {
  bic = -2*l + p * log(n)
  return(bic)
}

x1=c(2,5)
x2=c(8,6)
x3=c(1,0)
x4=c(9,3)