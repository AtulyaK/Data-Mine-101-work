 myDF <- read.csv("/anvil/projects/tdm/data/election/escaped2020sample.txt", sep="|")

options(jupyter.rich_display = F)

options(repr.matrix.max.cols = 30,repr.matrix.max = 200)

head(myDF)

head(myDF$TRANSACTION_DT
)

library(lubridate, warn.conflicts = FALSE)
myDF$newdates <-mdy(myDF$TRANSACTION_DT)

class(myDF$TRANSACTION_DT)

class(myDF$newdates)

head(myDF$newdates)

myDF$TRANSACTION_YR = year(myDF$newdates)

table(myDF$TRANSACTION_YR)

result <- tapply(myDF$TRANSACTION_AMT, myDF$TRANSACTION_YR, sum)

plot( names(result), result, xlab = "Year",ylab="Number of Transactions" )


my2020DF <- subset(myDF,TRANSACTION_YR == "2020")

dim(my2020DF)

my2020DF$TRANSACTION_MONTH = month(my2020DF$newdates)

head(my2020DF)

tapply(my2020DF$TRANSACTION_AMT, my2020DF$TRANSACTION_MONTH, sum)

result <- tapply(my2020DF$TRANSACTION_AMT, my2020DF$TRANSACTION_MONTH, sum)

plot( names(result), result, xlab = "Monthr",ylab="Number of Transactions" )


tail(sort(tapply(myDF$TRANSACTION_AMT, myDF$NAME, sum)))

tail(sort(tapply(myDF$TRANSACTION_AMT, myDF$STATE, sum)),n=5)

tail(sort(tapply(myDF$TRANSACTION_AMT, myDF$ZIP_CODE, sum)),n=10)

barplot(tail(sort(tapply(myDF$TRANSACTION_AMT, myDF$STATE, sum)),n=5))


barplot(tail(sort(tapply(myDF$TRANSACTION_AMT, myDF$ZIP_CODE, sum)),n=10))


tail(sort(tapply(myDF$TRANSACTION_AMT, myDF$CITY, sum)),n=10)


barplot(tail(sort(tapply(myDF$TRANSACTION_AMT, myDF$CITY, sum)),n=10))

