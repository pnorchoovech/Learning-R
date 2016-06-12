#======================================readr package======================================
install.packages("readr")


# Load the readr package
library(readr)

# Import potatoes.txt using read_delim(): potatoes
potatoes<- read_delim(file="potatoes.txt", delim="\t")
str(potatoes)
# Create a subset of potatoes: potatoes_sel
potatoes_sel<- read_delim(file="potatoes.txt", delim = "\t", col_type = "_____nnn")  
str(potatoes_sel)


# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method", 
                "texture", "flavor", "moistness")

# Import potatoes.csv with read_csv(): potatoes
potatoes<- read_csv("potatoes.csv", col_name=properties)
str(potatoes)
# Create a copy of potatoes: potatoes2
potatoes2<-potatoes

# Convert the method column of potatoes2 to a factor
potatoes2$method<- factor(potatoes2$method)

# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method", 
                "texture", "flavor", "moistness")

# Import 5 observations from potatoes.txt: potatoes_fragment
potatoes_fragment<-read_tsv("potatoes.txt", col_names= properties, skip= 7, n_max=5)

# Import all data, but force all columns to be character: potatoes_char
potatoes_char<-read_tsv("potatoes.txt", col_type = "cccccccc")

# Display the structure of potatoes_char
str(potatoes_char)


# readr is already loaded

# Import without col_types
hotdogs <- read_tsv("hotdogs.txt", col_names = c("type", "calories", "sodium"))


# Display the summary of hotdogs
summary(hotdogs)
head(hotdogs)

# The collectors you will need to import the data
fac <- col_factor(levels = c("Beef", "Meat", "Poultry"))
int <- col_integer()

# Edit the col_types argument to import the data correctly: hotdogs_factor
hotdogs_factor <- read_tsv("hotdogs.txt", 
                           col_names = c("type", "calories", "sodium"),
                           # Change col_types to the correct vector of collectors
                           col_types = list(fac,int,int))

# Display the summary of hotdogs_factor
summary(hotdogs_factor)
#======================================data.table package======================================
#This package is much faster in handling large dataset
install.packages("data.table")
library(data.table)

# load the data.table package
library(data.table)

# Import potatoes.txt with fread(): potatoes
potatoes<- fread("potatoes.txt" )

head(potatoes)

# Print out arranged version of potatoes
potatoes[order(potatoes$moistness, decreasing=F),]

# Import 20 rows of potatoes.txt with fread(): potatoes_part
potatoes_part<- fread("potatoes.txt" , nrows=20)

# fread is already loaded

# Import columns 6, 7 and 8 of potatoes.txt: potatoes
potatoes<- fread("potatoes.txt", select=c(6,7,8))

# Keep only tasty potatoes (flavor > 3): tasty_potatoes
tasty_potatoes<- subset(potatoes, flavor>3)

summary(tasty_potatoes)
# Plot texture (x) and moistness (y) of tasty_potatoes
plot(tasty_potatoes$texture, tasty_potatoes$moistness)

