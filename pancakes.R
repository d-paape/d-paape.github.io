pancakes <- c("both","one","none")

select <- rep(NA,1000)
i <- 1
for (i in 1:1000) {
while (!select[i]%in%c("both","one")) {
  select[i] <- sample(pancakes,1)
}
i <- i + 1
}
table(select)

pancake_sides <- c("both_b1","both_b2","one_b","one_nb","none_nb1","none_nb2")

select <- rep(NA,1000)
i <- 1
for (i in 1:1000) {
  while (!select[i]%in%c("both_b1","both_b2","one_b")) {
    select[i] <- sample(pancake_sides,1)
  }
  i <- i + 1
}
table(select)
