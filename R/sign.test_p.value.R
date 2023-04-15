sign.test_p.value <- function(x,alternative='two.sided', theta0=0, ...) {

  alternative.opts <- c('two.sided', 'less', 'greater')
  alt <- pmatch(alternative,alternative.opts)

  x <- x-theta0

  s <- sum(x > 0)
  m <- sum(x != 0)

  if(alt == 'less') {
    pval <- pbinom(s,m,0.5)
  } else if(alt == 'greater') {
    pval <- 1-pbinom(s-1,m,0.5)
  } else {
    pval <- 2*min(pbinom(s,m,0.5), 1-pbinom(s-1,m,0.5))
  }

  pval

}
