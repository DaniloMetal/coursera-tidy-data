## Code Book 

This code book is to explain the steps used in the Assignment: Getting and Cleaning Data Course Project for Cousera

## Descritión provided by Assignment

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist."

## Explanation of each file

* `features.txt`: Names of the features (records).
* `activity_labels.txt`: Names and IDs for each of the 6 activities, following the description below:

1. `WALKING` - walking performed on the test
2. `WALKING_UPSTAIRS` - walking up a stairs performed on the test
3. `WALKING_DOWNSTAIRS` - walking down a stairs performed on the test
4. `SITTING` - sitting performed on the test
5. `STANDING` - standing performed on the test
6. `LAYING` - laying down performed on the test

### Train files


* `X_train.txt`: Records (observations) of the features, contain the data measurement captured by instruments
* `y_train.txt`: File representing the ID of the activity related to each of the observations in `X_train.txt`.
* `subject_train.txt`: File representing the ID of the volunteer related to each of the observations in `X_train.txt`.

### Test Files

* `X_test.txt`: Observations of the features, contain the data measurement captured by instruments
* `y_test.txt`: File representing the ID of the activity related to each of the observations in `X_test.txt`.
* `subject_test.txt`: File representing the ID of the volunteer related to each of the observations in `X_test.txt`.


## Processing steps

1. Read all dataset provided by experiment and name the fields
2. Merge the appropriate datasets to create a unique dataset 
3. Remove all unnecessary columns and keep "mean()" or "std()"
4. Use the activity labels to identify the activities in the new dataset
5. Normalizing and aggregator to tidy the data
6. Write a CSV file containing the tidy Dataset
## Variables

* `volunteerID`	The ID of subject
* `activity.labels` Is the action or activity performed by volunteer

## Summarized Variables and detailed description

The features provided are Mean value and Standard deviation capturated instruments in the smartphone.
Each variable representing an instrument that give us the mean and standard deviation of the data collected.

### You can access the detailed information in the files given by coursera.
* _General description you can find in `README.txt`_ 
* _The description below was provided on `features_info.txt` file:_


Body **linear acceleration** and **angular velocity** were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ)

Acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)

Magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)

## Following the detailed name of the variables:

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