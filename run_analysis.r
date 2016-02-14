# "UCI HAR Dataset shoudl be working directory for this code to work

library(reshape2)

# Load activity labels + features
activityLabels <- read.table("activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("features.txt")
features[,2] <- as.character(features[,2])

# Extract only the data on mean and standard deviation
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
#return only the second column of features, and only thw rows we want
featureWNames <- features[featuresWanted,2]
#simplify the names of the feature names by removing the dash in front of Mean
featureWNames = gsub('-mean', 'Mean', featureWNames)
#simplify the names of the feature names by removing the dash in front of Std
featureWNames = gsub('-std', 'Std', featuresWanted.names)
featureWNames <- gsub('[-()]', '', featuresWanted.names)

# Load the datasets
train <- read.table("train/X_train.txt")[featuresWanted]
trainActivities <- read.table("train/Y_train.txt")
trainSubjects <- read.table("train/subject_train.txt")
# combine the three dataset; they should be in the same datasets as they describe the same dataset (just different columns)
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("test/X_test.txt")[featuresWanted]
testActivities <- read.table("test/Y_test.txt")
testSubjects <- read.table("test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# merge datasets and add labels
theData <- rbind(train, test)
colnames(theData) <- c("subject", "activity", featureWNames)

# turn activities & subjects into factors
theData$activity <- factor(theData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
theData$subject <- as.factor(theData$subject)

#  melt takes wide-format data and melts it into long-format data
# see http://seananderson.ca/2013/10/19/reshape.html
theData.melted <- melt(theData, id = c("subject", "activity"))
# dcast takes long-format data and turns it into wide format data
# where rows are not unique, the data is summarized by teh provide function lIn this case "mean"
theData.mean <- dcast(theData.melted, subject + activity ~ variable, mean)

write.table(theData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)