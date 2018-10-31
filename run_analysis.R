## Setting workspace
setwd(file.path("C:","Users","danil","Desktop","Coursera","Data Science","Getting and Cleaning Data","Week4","Course Project","UCI HAR Dataset"));

#### Calling libraries
library(reshape2);
library(data.table);

#### Reading Data Sets

## 1 Merges the training and the test sets to create one data set.
X_train <- read.table("train/X_train.txt", quote="\"", stringsAsFactors=FALSE);
X_test <- read.table("test/X_test.txt", quote="\"", stringsAsFactors=FALSE);
features <- read.table("features.txt", quote="\"", stringsAsFactors=FALSE);
## 4. Appropriately labels the data set with descriptive variable names.
names(X_train) <- features$V2;
names(X_test) <- features$V2;

##### Y activity related

y_train <- read.table("train/y_train.txt", quote="\"", stringsAsFactors=FALSE);
y_test <- read.table("test/y_test.txt", quote="\"", stringsAsFactors=FALSE);
## 4. Appropriately labels the data set with descriptive variable names.
names(y_train) <- "activity.labels";
names(y_test) <- "activity.labels";

activity_labels <- read.delim("activity_labels.txt",sep = ' ',header = F); ## 'activity_labels.txt': Links the class labels with their activity.


### ID of the volunteer

subject_train <- read.table("train/subject_train.txt", quote="\"", stringsAsFactors=FALSE);
subject_test <- read.table("test/subject_test.txt", quote="\"", stringsAsFactors=FALSE);
## 4. Appropriately labels the data set with descriptive variable names.
names(subject_train) <- "volunteerID";
names(subject_test) <- "volunteerID";


train <- cbind(subject_train, y_train, X_train);
test <- cbind(subject_test, y_test, X_test);
data_bind <- rbind(train, test);               ### Merging two datasets to crete one data set "point 1"


mean.std.regexp <- grepl("mean\\(\\)", names(data_bind)) | grepl("std\\(\\)", names(data_bind))
mean.std.regexp [c(1,2)] <- TRUE ## Force true to keep the primary and second colunm to not be removed 
data_bind <- data_bind[, mean.std.regexp] # Filter to keep just mean and std colunms


## 4.	Appropriately labels the data set with descriptive variable names.
data_bind$activity.labels <- factor(data_bind$activity.labels, labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"));

### Normalizing and aggregator to tidy the data
nrmz <- melt(data_bind, id=c("volunteerID","activity.labels"));  ##  normalizing the data.. Similar to gather()
Datastet.Tidy <- dcast(nrmz, volunteerID+activity.labels ~ variable, mean); ## aggregating and getting mean

## Finally!! Write final Dataset :)

write.table(Datastet.Tidy, file = "Datastet.Tidy.txt", sep = "\t", row.names = FALSE)