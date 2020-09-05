# Load required packages
require("data.table",quietly = TRUE)
require("reshape2",quietly = TRUE)
#Get required data and unzip file
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./data.zip")
unzip(zipfile = "data.zip")

# Load activity labels and features
actLabels <- fread("./UCI HAR Dataset/activity_labels.txt"
                        , col.names = c("classLabels", "actName"))
features <- fread("./UCI HAR Dataset/features.txt"
                   , col.names = c("index", "featureNames"))
# find features that have mean or standard deviation in their column names
featuresWanted <- grep("(mean|std)\\(\\)", features[, featureNames])
measure <- features[featuresWanted, featureNames]
# remove brackets from the feature names
measure <- gsub('[()]', '', measure)

# Load training dataset
train <- fread("./UCI HAR Dataset/train/X_train.txt")[, featuresWanted, with = FALSE]
# rename columns
data.table::setnames(train, colnames(train), measure)
trainact <- fread("./UCI HAR Dataset/train/y_train.txt", col.names = c("Activity"))
trainsub <- fread("./UCI HAR Dataset/train/subject_train.txt", col.names = c("SubNum"))
train <- cbind(trainsub, trainact, train)

# Load testing dataset and rename columns
test <- fread("./UCI HAR Dataset/test/X_test.txt")[, featuresWanted, with = FALSE]
data.table::setnames(test, colnames(test), measure)
testact <- fread("./UCI HAR Dataset/test/y_test.txt", col.names = c("Activity"))
testsub <- fread("./UCI HAR Dataset/test/subject_test.txt", col.names = c("SubNum"))
test <- cbind(testsub, testact, test)

# merge datasets
combined <- rbind(train, test)

# Convert the labels to activity names and the levels as the class labels
combined[["Activity"]] <- factor(combined[, Activity], levels = actLabels[["classLabels"]], labels = actLabels[["actName"]])


# convert the type of subject number to factor
combined[["SubNum"]] <- as.factor(combined[, SubNum])
# melt the data based on subject number and activity
combined <- reshape2::melt(data = combined, id = c("SubNum", "Activity"))
# cast the variable based on subject number and activity and aggregate it based on the mean
combined <- reshape2::dcast(data = combined, SubNum + Activity ~ variable, fun.aggregate = mean)
# write the data to csv file
data.table::fwrite(x = combined, file = "tidied.csv", quote = FALSE)