## Title: run_analysis.R
## Description: Script developed to get and process the UCI Human Activity Recognition(HAR) 
## data set by labeling column data for records with a cleansed human readable identifier, 
## merging training and test data. 
## Developed By: Benjamin Van Vliet (Benjamin.g.vanvliet@gmail.com)
## Test/Dev Environment Specifics: 
##  Machine: Lenovo Yoga3 Pro Laptop (Intel 5Y70 @ 1.10GHz, 8.00GB RAM, 256GB SSD) 
##  OS: Windows 10, 64Bit
##  R Environment: R version 3.2.1 (2015-06-18) 64Bit
##
## Task Brief:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the 
## average of each variable for each activity and each subject.

## Set up dependencies: dplyr, data.table. Assume these are already installed
library(data.table)
library(dplyr)

## Define helper function used to put activity field data into title case
titleCap <- function(x) {
    s <- strsplit(x, "_")[[1]]
    paste(toupper(substring(s, 1,1)), substring(s, 2),
          sep="", collapse="_")
}

## Download UCI Smartphones Data Set zip file and unzip file and directory structure
## to working directory, but only if not already downloaded
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./Dataset.zip")){
    download.file(url, "./Dataset.zip", mode="wb")
    ## Extract data directory using default directory structure from zip archive
    unzip("./Dataset.zip", exdir = ".")
}

setwd("./UCI HAR Dataset")

## Define locations for training and test data folders  
trainDirectory <- paste(getwd(),"/train/",sep="")
testDirectory <- paste(getwd(),"/test/",sep="")

## Read features and activities first to determine which test and train data to load 
## Load features column labels data from features.txt
featureColumns <- read.table(file = "./features.txt",stringsAsFactors=FALSE)

## Record indexes of features that relate to mean to standard deviation
## Note: mean columns are defined as those column name including the string 'mean()'
## Note: standard deviation columns are defined as those column name including the string 'std()' 
filteredFeatureIndexes <- featureColumns[grep("mean\\(\\)|std\\(\\)",featureColumns$V2),1]

## Tidy up featureColumns column names for improved readability 
featureColumns[,2] <- sub("\\-","",featureColumns[,2])
featureColumns[,2] <- sub("\\(\\)","",featureColumns[,2])
featureColumns[,2] <- sub("mean","Mean",featureColumns[,2])
featureColumns[,2] <- sub("std","StandardDeviation",featureColumns[,2])

## Expand unit of measure for time and frequency where col description starts with f or t
featureColumns[,2] <- sub("^f","Frequency",featureColumns[,2])
featureColumns[,2] <- sub("^t","Time",featureColumns[,2])

## Load activity labels from activity_labels.txt
activityLabels <- read.table(file = "./activity_labels.txt",stringsAsFactors=FALSE, 
                             col.names=c("ActivityStateID", "ActivityDescription"))
## Remove underscores from labels and put in title case
activityLabels[,2] <- sapply(activityLabels[,2], tolower)
activityLabels[,2] <- sapply(activityLabels[,2], titleCap)
activityLabels[,2] <- sub("_","",activityLabels[,2])

## Load and merge test and training files
## Note: discard inertial data files as data dictionary reveals detail does not correspond
## with mean or standard deviation data, i.e. following discarded for /test and /train
## - /Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
## - /Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
## - /Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

## Load test data and activity states first
activityFeatureData <- read.table(paste(testDirectory,"X_test.txt",sep=""))
activityStates <- read.table(paste(testDirectory,"y_test.txt",sep=""),
                             col.names=c("ActivityStateID"))
activitySubjects <- read.table(paste(testDirectory,"subject_test.txt",sep=""),
                               col.names=c("SubjectID"))

## Bind training data file into loaded test data frames
activityFeatureData <- rbind(activityFeatureData,read.table(paste(trainDirectory,
                            "X_train.txt",sep="")))
activityStates <- rbind(activityStates, read.table(paste(trainDirectory,"y_train.txt",
                            sep=""),col.names=c("ActivityStateID")))
activitySubjects <- rbind(activitySubjects, read.table(paste(trainDirectory,
                            "subject_train.txt",sep=""),col.names=c("SubjectID")))

## Update column names in activity data frame with feature names loaded above
colnames(activityFeatureData) <- featureColumns[,2]

## Bind subject, state and feature data sets together columnwise
## Only bind feature data columns that correspond with filtered mean and stdev measures 
activityDataOutput <- cbind(activitySubjects,activityStates,
                            activityFeatureData[,filteredFeatureIndexes])

## Merge activity labels with state id references in the output dataset 
activityDataMerge <- merge(activityDataOutput,activityLabels,by.x="ActivityStateID",
                            by.y="ActivityStateID")

## Use the activity description column detail to replace the set's activity id
activityDataOutput[,"ActivityStateID"] <- activityDataMerge[,"ActivityDescription"]
setnames(activityDataOutput, "ActivityStateID", "ActivityDescription")

## Convert output to table to use data.table average across summation and stdev by group
## Use columns 3:68 for as they represent all the feature data columns
activityDataOutputTable <- data.table(activityDataOutput)
activityDataOutputResult <- activityDataOutputTable[,lapply(.SD,mean),by="SubjectID,ActivityDescription",.SDcols=3:68]

## Relabel columns to append average to front for calculated values beyond the 2nd column
columnDescriptions <- colnames(activityDataOutputResult)
columnDescriptions <- sapply(columnDescriptions, function(x) {paste("Average",x,sep="")})[c(-1,-2)]
setnames(activityDataOutputResult,3:length(activityDataOutputResult),columnDescriptions)

## Remove references to objects that are not the summary and final output
remove(activityDataMerge, activityDataOutputTable, activityFeatureData, activityLabels, activityStates, activitySubjects, featureColumns)

## Write resulting tidy data table out to file, stripping headers
write.table(activityDataOutputResult,file="../TidyData.txt", row.names=FALSE)