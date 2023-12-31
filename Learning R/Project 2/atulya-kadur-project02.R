myDF <- read.csv("/anvil/projects/tdm/data/flights/subset/1995.csv")

head(myDF)

dim(myDF)

summary(myDF)

str(myDF)

class(myDF$Distance)

tail(myDF)

# code here
my_airports <- myDF$Origin

head(my_airports)

class(my_airports)

head(my_airports,250)

# code here
str(myDF$Origin[myDF$Origin == "IND"])

str(myDF$Dest[myDF$Dest == "IND"])

myDF[894,17]

myDF[894,18]



str(myDF$Distance[myDF$Distance< 200])

# code here
sort(table(myDF$UniqueCarrier))

tail(sort(table(myDF$TailNum)))


# code here
hist(myDF$Distance, main = "Flight Distances",xlab = "Distnace in Miles", ylab ="Count",col="lightblue")
