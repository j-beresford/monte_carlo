#### HarvardX Data Science - code chunk repository #####

#### Monte Carlo Simulations

# Equal probability - 5 heads in a row
B<-1000
n<-5

all_heads<-replicate(B,{
  draws<-sample(c("heads", "tails"), n, replace=TRUE)
  all(draws=="heads")
})
mean(all_heads==TRUE)

# Mixed probability - when coin is weighted 60/40 in favour of heads

heads_prob<-0.6
tails_prob<-1-heads_prob

all_heads<-replicate(B,{
  draws<-sample(c("heads", "tails"), n, prob = c(heads_prob,tails_prob), replace=TRUE)
  all(draws=="heads")
})
mean(all_heads==TRUE)



