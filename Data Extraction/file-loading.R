# Create a path to the hotdogs.txt file: path
dir()

# Import the hotdogs.txt file: hotdogs
path<-file.path("hotdogs","hotdogs.txt")
hotdogs<-read.table(path, header = F, sep="\t" , col.names = c('type','calories','sodium')) 


# Call head() on hotdogs
head(hotdogs)


# Import swimming_pools.csv correctly: pools
pools<- read.csv("swimming_pools.csv", header = T, stringsAsFactors = F)

# Check the structure of pools
str(pools)

# Import swimming_pools.csv with factors: pools_factor
pools_factor <- read.csv("swimming_pools.csv", header = T)

# Check the structure of pools_factor
str(pools_factor)

# Load in the hotdogs data set: hotdogs
hotdogs<- read.delim("hotdogs.txt", header =F, col.names = c("type","calories", "sodium"))
head(hotdogs)

# Select the hot dog with the least calories: lily
lily<- hotdogs[which.min(hotdogs$calories),]
# Select the observation with the most sodium: tom
tom<- hotdogs[which.max(hotdogs$sodium),]

# Print lily and tom
print(lily)
print(tom)

# Previous call to import hotdogs.txt
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))

# Print a vector representing the classes of the columns
sapply(hotdogs, FUN=class)

# Edit the colClasses argument to import the data correctly: hotdogs2
hotdogs2 <- read.delim("hotdogs.txt", header = FALSE, 
                       col.names = c("type", "calories", "sodium"),
                       colClasses = c("factor", "NULL" , "numeric"))


# Display the structure of hotdogs2
str(hotdogs2)