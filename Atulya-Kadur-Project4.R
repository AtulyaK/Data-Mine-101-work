myDF <- read.csv("/anvil/projects/tdm/data/craigslist/vehicles.csv", stringsAsFactors = TRUE)

options(jupyter.rich_display = T)
options(repr.matrix.max.cols=26, repr.matrix.max.rows=200)

head(sort(myDF$state,increasing="TRUE"),n=5)

tail(sort(table(myDF$state)),n=5)

lessThan2000 <- subset(myDF,price>=2000)


dim(myDF)

dim(lessThan2000)

mean(myDF$price)

names(myDF)

# code here

myDF$mileage_counter <- cut(myDF$odometer, breaks = c(0,50000,100000,150000,Inf),labels = c("Low","Moderate","High","Very High"))

myDF$has_Vin <- rep("Has Vin", times = 426880)

myDF$has_VIN[myDF$VIN == ""] <- "No Vin"

mynchar <- nchar(as.character(myDF$description))

myDF$description_length <- cut(mynchar, breaks = c(0,50,100,200,500,Inf),labels = c("Very Short","Short","Medium","Long","Very Long"))

table(myDF$mileage_counter)

table(myDF$has_Vin)

table(myDF$description_length)

# code here
myTexasDF <- subset(myDF, state == "tx")
table(myTexasDF$state)

myCaliforniaDF <-subset(myDF, state == "ca")
table(myCaliforniaDF$state)

myArizonaDF <-subset(myDF, state == "az")
table(myArizonaDF$state)

