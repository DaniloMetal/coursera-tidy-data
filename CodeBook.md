## Code Book 

This code book is to explain the steps used in the Assignment: Getting and Cleaning Data Course Project for Cousera

## Descritión provided by Assignment

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist."

## Explanation of each file

* `features.txt`: Names of the features (records).
* `activity_labels.txt`: Names and IDs for each of the 6 activities.

### Train files
* `X_train.txt`: Records (observations) of the features
* `y_train.txt`: File representing the ID of the activity related to each of the observations in `X_train.txt`.
* `subject_train.txt`: File representing the ID of the volunteer related to each of the observations in `X_train.txt`.

### Test Files

* `X_test.txt`: Observations of the features, for 9 of the 30 volunteers.
* `y_test.txt`: File representing the ID of the activity related to each of the observations in `X_test.txt`.
* `subject_test.txt`: File representing the ID of the volunteer related to each of the observations in `X_test.txt`.


### You can access the detailed information in the files given by coursera.
* `README.txt` General description. 
* `features_info.txt` Detailed information about the features.


## Processing steps

1. Read all dataset provided by experiment and name the fields
2. Merge the appropriate datasets to create a unique dataset 
3. Remove all unnecessary columns and keep "mean()" or "std()"
4. Use the activity labels to identify the activities in the new dataset
5. Normalizing and aggregator to tidy the data
6. Write a CSV file containing the tidy Dataset

## Sumarized Data
* `tBodyAcc-mean()-X`
* `tBodyAcc-mean()-Y`
* `tBodyAcc-mean()-Z`
* `tBodyAcc-std()-X`
* `tBodyAcc-std()-Y`
* `tBodyAcc-std()-Z`
* `tGravityAcc-mean()-X`
* `tGravityAcc-mean()-Y`
* `tGravityAcc-mean()-Z`
* `tGravityAcc-std()-X`
* `tGravityAcc-std()-Y`
* `tGravityAcc-std()-Z`
* `tBodyAccJerk-mean()-X`
* `tBodyAccJerk-mean()-Y`
* `tBodyAccJerk-mean()-Z`
* `tBodyAccJerk-std()-X`
* `tBodyAccJerk-std()-Y`
* `tBodyAccJerk-std()-Z`
* `tBodyGyro-mean()-X`
* `tBodyGyro-mean()-Y`
* `tBodyGyro-mean()-Z`
* `tBodyGyro-std()-X`
* `tBodyGyro-std()-Y`
* `tBodyGyro-std()-Z`
* `tBodyGyroJerk-mean()-X`
* `tBodyGyroJerk-mean()-Y`
* `tBodyGyroJerk-mean()-Z`
* `tBodyGyroJerk-std()-X `
* `tBodyGyroJerk-std()-Y `
* `tBodyGyroJerk-std()-Z `
* `tBodyAccMag-mean()    `
* `tBodyAccMag-std()     `
* `tGravityAccMag-mean() `
* `tGravityAccMag-std()  `
* `tBodyAccJerkMag-mean()`
* `tBodyAccJerkMag-std() `
* `tBodyGyroMag-mean()   `
* `tBodyGyroMag-std()    `
* `tBodyGyroJerkMag-mean()`
* `tBodyGyroJerkMag-std()`
* `fBodyAcc-mean()-X`
* `fBodyAcc-mean()-Y`
* `fBodyAcc-mean()-Z`
* `fBodyAcc-std()-X `
* `fBodyAcc-std()-Y `
* `fBodyAcc-std()-Z `
* `fBodyAccJerk-mean()-X`
* `fBodyAccJerk-mean()-Y`
* `fBodyAccJerk-mean()-Z`
* `fBodyAccJerk-std()-X `
* `fBodyAccJerk-std()-Y `
* `fBodyAccJerk-std()-Z `
* `fBodyGyro-mean()-X`
* `fBodyGyro-mean()-Y`
* `fBodyGyro-mean()-Z`
* `fBodyGyro-std()-X `
* `fBodyGyro-std()-Y `
* `fBodyGyro-std()-Z `
* `fBodyAccMag-mean()`
* `fBodyAccMag-std() `
* `fBodyBodyAccJerkMag-mean()`
* `fBodyBodyAccJerkMag-std()`
* `fBodyBodyGyroMag-mean()`
* `fBodyBodyGyroMag-std()`
* `fBodyBodyGyroJerkMag-mean()`
* `fBodyBodyGyroJerkMag-std()`