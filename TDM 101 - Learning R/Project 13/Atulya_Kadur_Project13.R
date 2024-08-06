options(jupyter.rich_display = F) 
library(data.table)
orders <- fread("/anvil/projects/tdm/data/icecream/combined/products.csv")
mybrands <- c("bj", "breyers", "talenti")
myfiles <- paste0("/anvil/projects/tdm/data/icecream/", mybrands, "/reviews.csv")
bigDF <- do.call(rbind, lapply(myfiles, fread))
sum <- tapply(orders$rating_count, orders$brand, sum)
sum
barplot(sum, main = "Ice Cream Brand Rating Bar Plot", ylab = "sum of the ratings", xlab = "the list of the brands")
colnames(orders)
head(orders)
colnames(bigDF)
head(bigDF)
sort(table(format(bigDF$date,"%m-%Y")))
barplot(sort(table(format(bigDF$date,"%m-%Y"))))
head(sort(tapply(bigDF$stars, bigDF$key, mean)))
bigDF[nchar(bigDF$text) >= 2500]
tail(names(sort(table(bigDF$author))),3)
bigDF[(bigDF$author == "FuzzyGut") & (bigDF$stars == 1), ]
