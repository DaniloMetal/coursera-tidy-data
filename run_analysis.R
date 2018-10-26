## Setting workspace

setwd(file.path("C:","Users","danil","Desktop","Coursera","Data Science","Getting and Cleaning Data","Week4","Course Project","UCI HAR Dataset"));


#### Calling libraries

library(tidyr);
library(dplyr);
library(reshape2);
library(data.table);

#### Reading Data Sets

## 1 Merges the training and the test sets to create one data set.

X_train <- read.table("train/X_train.txt", quote="\"", stringsAsFactors=FALSE);

X_test <- read.table("test/X_test.txt", quote="\"", stringsAsFactors=FALSE);


## 1.2
features.duplicated <- read.table("features.txt", quote="\"",stringsAsFactors=FALSE);

##features.duplicated[duplicated(features.duplicated$V2),]
##     V1                               V2
##317 317       fBodyAcc-bandsEnergy()-1,8 
##Many records duplicated 

features <- make.names(features.duplicated$V2, unique = TRUE)  ## Removing duplicate rows and not allowed characters


subject_train <- read.table("train/subject_train.txt", quote="\"", stringsAsFactors=FALSE);

subject_test <- read.table("test/subject_test.txt", quote="\"", stringsAsFactors=FALSE);

activity_labels <- read.delim("activity_labels.txt",sep = ' ',header = F); ## 'activity_labels.txt': Links the class labels with their activity.



X_bind_rows <- bind_rows(X_train, X_test); ### Merging two datasets to crete one data set "point 1"   

## 4. Appropriately labels the data set with descriptive variable names.

names(X_bind_rows) <- features;            

subject_bind_rows <- bind_rows(subject_train, subject_test);

subject_activity <- merge(activity_labels, subject_bind_rows, by.x = "V1", by.y = "V1", all=TRUE); ## Joint description with activities
names(subject_activity) <- c("subject.id","activity.desc");

## 3. Uses descriptive activity names to name the activities in the data set

data_bind <- cbind(as.data.table(X_bind_rows),(subject_activity));

##### Y

y_train <- read.table("train/y_train.txt", quote="\"", stringsAsFactors=FALSE);
y_test <- read.table("train/y_train.txt", quote="\"", stringsAsFactors=FALSE);

y_bind <- bind_rows(y_train, y_test);  ### Merging two datasets to crete one data set "point 1"

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.

mean <- select(data_bind, contains("mean")); ## Select mean values
std <- select(data_bind, contains("std"));   ## Select standard deviation values 


mean.std <- cbind(as.data.table(mean),(std));
DataSet.1 <- cbind(as.data.table(mean.std), (subject_activity));

write.csv(DataSet.1, "DataSet.1.csv");

##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

DataSet.2 <- na.omit(DataSet.1) ## Function for remove rows with missing values on columns in order to tyde the dataset 

write.csv(DataSet.2,"DataSet.2.csv"); ## ¡Final Tidy Data!
