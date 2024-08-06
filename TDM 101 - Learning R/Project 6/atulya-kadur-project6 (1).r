myDF <- read.csv("/anvil/projects/tdm/data/olympics/athlete_events.csv", stringsAsFactors=TRUE)

options(jupyter.rich_display = F)

head(myDF)

table(myDF$Games)

table(unique(subset(myDF$NOC,myDF$Year == 1980)))

#Answer for 1B
table(unique(subset(myDF$NOC,myDF$Games != "Summer 1980")))#Answer for 1B
unique(subset(myDF$NOC,myDF$Games != "Summer 1980"))

#Answer for Question 1c
newDF <- subset(myDF, Name %in% names(table(myDF$Name)[table(myDF$Name)>=2]))

head(newDF,n=20)

dim(newDF)

# code here
tapply(myDF$Age,myDF$NOC,mean)

#Answer for 2B see the markdown cell after to see why there is NA values and errors showing up
sort(tapply(myDF$Height,myDF$Sport,max,na.rm = TRUE))

table(myDF$Height==0,myDF$Sport)

