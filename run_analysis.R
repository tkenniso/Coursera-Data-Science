##### The following script uses data on Human Activity Recognition using Smartphones
##### from the UCI Machine Learning Repository. The data set is downloaded here: 
##### http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## The script reads-in training and test data sets into R, merges them into one data set,
## then creates a separate tidy data set with the average of each response variable for 
## each activity and each subject. 

run_analysis <- function(directory) {
        
        # Set directory, load libraries
        setwd(directory)
        library(dplyr)
        
        # Read in test & training datasets, combine the two
        xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
        xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
        har <- rbind(xtrain,xtest)
        
        # Read in variable names, rename columns 
        responseVar <- read.table("./UCI HAR Dataset/features.txt")
        responseVarUnique <- make.names(responseVar[,c(2)], unique=TRUE) 
        names(har) <- responseVarUnique

        # Extract measurements on mean & std ONLY
        har <- har[,grepl("(mean|std)[^Freq]",names(har))]
        
        # Read in subject variable, append to dataset
        subTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
        subTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
        temp <- rbind(subTrain,subTest)
        har$subject <- as.factor(temp[["V1"]])
        
        # Read in activity variable, append to dataset
        ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
        ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
        temp <- rbind(ytrain,ytest)
        har$activity <- as.vector(temp[["V1"]])
                
        # Read in activity labels, join with data set, rename
        activityLabel <- read.table("./UCI HAR Dataset/activity_labels.txt")
        har <- merge(har, activityLabel, by.x="activity", by.y="V1", all.x=TRUE)
        har <- select(har, -(activity))
        har <- rename(har, activity = V2)
        
        # Clean up variable names
        names(har) <- gsub(".mean",".Mean",names(har))
        names(har) <- gsub(".std",".MeanStd",names(har))
        names(har) <- gsub("[[:punct:]]","",names(har))
        
        # Compute averages across activity/subject
        tidy <- aggregate(x=har[,c(1:66)], by=list(har$subject, har$activity), 
                          FUN="mean", na.rm=TRUE)
        
        # Rename activity/subject variables
        tidy <- rename(tidy, subject=Group.1, activity=Group.2)
        
        # Export as a text file
        write.table(tidy, "har_tidy.txt", row.names=FALSE)
}


