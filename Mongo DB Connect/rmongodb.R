install.packages("rmongodb")
library(rmongodb)
mongo <- mongo.create(host = "localhost")
mongo.is.connected(mongo)
mongo
#Look at the db in mongo
mongo.get.databases(mongo)
#Let's look at all of the collections (tables) in one of the db's.
if(mongo.is.connected(mongo) == TRUE) {
  db <- "test"
  mongo.get.database.collections(mongo, db)
}
mongo.count(mongo, restaurants)
