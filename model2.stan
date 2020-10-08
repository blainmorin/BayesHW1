data {
  int<lower=0> N;
  int x[N];
}
parameters {
  real<lower=0> lambda;
}
model {
  x ~ poisson(lambda);
  lambda ~ weibull (1.6, .3);
}