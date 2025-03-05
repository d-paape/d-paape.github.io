pancakes <- c("both","one","none")

nrep <- 10000
select <- rep(NA,nrep)
select_side <- rep(NA,nrep)
other_side <- rep(NA,nrep)
rule <- 2

i <- 1
while (i < nrep) {
  select <- sample(pancakes,1)
  
  if (select=="both") {
    select_side[i] <- "burned"
    other_side[i] <- "burned"
    i <- i+1
  }
  else if (select=="one") {
    if (rule == 2) { # Select random side
      select_side[i] <- sample(c("burned","unburned"),1)
      other_side[i] <- ifelse(select_side[i]=="burned","unburned","burned")
    } else if (rule == 1) { # Always select burned side
      select_side[i] <- "burned"
      other_side[i] <- "unburned"
    }
    i <- i+1
  }
  else {
    select_side[i] <- "unburned"
    other_side[i] <- "unburned"
  }
}
df <- data.frame(pancake=select,select_side=select_side,other_side=other_side)
table(subset(df,select_side=="burned")$other_side)
