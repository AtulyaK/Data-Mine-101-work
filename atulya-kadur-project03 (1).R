myDF <- read.csv("/anvil/projects/tdm/data/craigslist/vehicles.csv")

options(jupyter.rich_display = F)

head(myDF)

dim(myDF) #426880 rows and 26 cols

str(myDF) # data set has numerical values, character strings, and logical values

table(myDF$year , useNA="always")

sum(is.na(myDF$year))

goodyearsDF <- subset(myDF, !is.na(myDF$year))

head(goodyearsDF)

dim(goodyearsDF)

missingyearsDF <- subset(myDF, is.na(myDF$year))

dim(missingyearsDF)

head(missingyearsDF)

subset(aggregate(price ~ year, data = myDF, FUN = mean),year>=2003)

which.max(table(myDF$year))

which.max(table(myDF$region_url))

tail(sort(table(myDF$state)),n=3)

years <- subset(aggregate(price ~ year, data = myDF, FUN = mean),year>=2003)$year
meanPrice <- subset(aggregate(price ~ year, data = myDF, FUN = mean),year>=2003)$price
plot( years , meanPrice)
dotchart(years[meanPrice<500000],meanPrice[meanPrice<500000])

