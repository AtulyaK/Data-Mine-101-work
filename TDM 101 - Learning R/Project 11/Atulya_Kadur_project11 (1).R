options(jupyter.rich_display = F)
library(ggplot2)
options(repr.matrix.max.cols = 30, repr.matrix.max.rows = 30)
library(data.table)
orders <- fread("/anvil/projects/tdm/data/restaurant/orders.csv")
head(orders)
head(orders$created_at)
#answer 1a
orders$created_at <- as.Date(orders$created_at)
tail(orders$created_at)
#answer 1b
years <- unique(format(as.Date(orders$created_at, format="%d/%m/%Y"),"%Y"))
head(years)
#answer 1c
plot(prop.table(table(wday(orders$created_at))))
# answer 2a
tapply(orders$vendor_id, year(orders$created_at), function(x) {head(sort(table(x), decreasing = TRUE))})
#answer 2b
tapply(orders$grand_total[year(orders$created_at) == 2019], orders$vendor_id[year(orders$created_at) == 2019], function(x) {mean(sort(table(x), decreasing=TRUE))})[c("113", "78", "105", "83", "79", "84")]
tapply(orders$grand_total[year(orders$created_at) == 2020], orders$vendor_id[year(orders$created_at) == 2020], function(x) {mean(sort(table(x), decreasing=TRUE))})[c("846", "84", "79", "113", "386", "849")]
beforeFive <- table( wday(orders$created_at)[hour(orders$created_at) < 17]  )
afterFive <- table( wday(orders$created_at)[hour(orders$created_at) >= 17]  )
myDF <- data.frame(group=c(rep("before five",times=7),rep("after five",times=7)), 
                   mycounts=c(beforeFive, afterFive), 
                   index=c(1:7, 1:7))
ggplot(myDF, aes(index, mycounts, fill=group)) + geom_col(position = "dodge")
# code here
plot(table(orders$payment_mode))
plot(table(orders$LOCATION_TYPE))
plot(table(orders$vendor_rating))
