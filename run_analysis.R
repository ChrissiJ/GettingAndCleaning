
## -----------------------------------------------------------------------------
## -----------------------------------------------------------------------------
## R script for the assignment for the "Getting and cleaning data" course
## -----------------------------------------------------------------------------
## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
## Setup
## -----------------------------------------------------------------------------
rm(list=ls())
library(dplyr)


## -----------------------------------------------------------------------------
## -----------------------------------------------------------------------------
## Prepare and append training and test data
## -----------------------------------------------------------------------------
## -----------------------------------------------------------------------------

## -----------------------------------------------------------------------------
## Load data from main folder: Labels and features
## -----------------------------------------------------------------------------

## Labels for the activities
labels <- read.table(file = "./UCI HAR Dataset/activity_labels.txt"); labels
## Features seem to be the variable names
features <- read.table(file = "./UCI HAR Dataset/features.txt"); features 

## -----------------------------------------------------------------------------
## Preparing training dataset
## -----------------------------------------------------------------------------
# IDs
trainSubject <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt")
names(trainSubject) <- "SubjectID"
# The activities
trainY <- read.table(file = "./UCI HAR Dataset/train/y_train.txt")
names(trainY) <- "activity"  
# Actual dataset
trainX <- read.table(file = "./UCI HAR Dataset/train/X_train.txt")
dim(trainX) 
# Attach labels to dataset and keep only those with mean() and std()
names(trainX) <- features[, 2]
trainX <- trainX[, grep("mean\\(\\)|std\\(\\)", names(trainX))]

# Add IDs and activities to dataset
TRAIN <- cbind(trainSubject, trainY, trainX)



## -----------------------------------------------------------------------------
## Preparing test dataset
## -----------------------------------------------------------------------------
# IDs
testSubject <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt")
names(testSubject) <- "SubjectID"
# The activities
testY <- read.table(file = "./UCI HAR Dataset/test/y_test.txt")
names(testY) <- "activity"  
# Actual dataset
testX <- read.table(file = "./UCI HAR Dataset/test/X_test.txt")
dim(testX) 
# Attach labels to dataset and keep only those with mean() and std()
names(testX) <- features[, 2]
testX <- testX[, grep("mean\\(\\)|std\\(\\)", names(testX))]

# Add IDs and activities to dataset
TEST <- cbind(testSubject, testY, testX)


## -----------------------------------------------------------------------------
## Append data
## -----------------------------------------------------------------------------
APPEND <- rbind(TRAIN, TEST)

## -----------------------------------------------------------------------------
## Merge activity labels
## -----------------------------------------------------------------------------

ACTIVITY <- merge(labels, APPEND, by.x="V1", by.y="activity")

## -----------------------------------------------------------------------------
## Clean and tidy variable names
## -----------------------------------------------------------------------------

## Variable names 
names(ACTIVITY)[1] <- "activityID"
names(ACTIVITY)[2] <- "activityName"
names(ACTIVITY) <- sub("mean\\(\\)", "Mean", names(ACTIVITY))  ## for cleaner variable names
names(ACTIVITY) <- sub("std\\(\\)", "Std", names(ACTIVITY))    ## for cleaner variable names
names(ACTIVITY) <- gsub("-", "", names(ACTIVITY))    ## for cleaner variable names

## Arrange data by ID
FINAL <- arrange(ACTIVITY, SubjectID)


## -----------------------------------------------------------------------------
## -----------------------------------------------------------------------------
## Create file with average for each individual
## for each activity
## -----------------------------------------------------------------------------
## -----------------------------------------------------------------------------

means <- FINAL[, -2] %>% group_by(SubjectID, activityID) %>% summarise_all(funs(mean))
write.table(means, file ="second_dataset.txt")


# clean workspace
rm(list=ls())