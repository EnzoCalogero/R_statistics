likelihood<-function(n,y,theta){
  return((theta^y*(1-theta)^(n-y)))
}

theta=seq(from=0.0,to=0.99, by=0.01)
plot(theta,likelihood(400,72,theta))
abline(v=.18)
loglike=function(n,y,theta){return(y*log(theta)+(n-y)*log(1-theta))}
plot(theta,loglike(400,72,theta))
abline(v=.18)

 #notes second 

pbinom(q=1,size=5,prob = .6)
