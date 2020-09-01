#### How big is big? 

flip_five <- function(B){
all_heads<-replicate(B,{
  draws<-sample(c("heads", "tails"), 5, replace=TRUE)
  all(draws=="heads")
})
mean(all_heads==TRUE)
}


# true probability of 5 heads is:
0.5^5
# monte carlo at low B gives:
flip_five(10)
# monte carlo at high B gives:
flip_five(10000)

# Starts to converge at around 5,000 
increase_size<-sapply(seq(1,10000,10), flip_five)
plot(seq(1,10000,10), increase_size, type = "l")

