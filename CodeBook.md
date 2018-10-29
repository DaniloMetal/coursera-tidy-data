### Code Book 

This code book is to explain the steps used in the Assignment: Getting and Cleaning Data Course Project for Cousera

### Descritión provided by Assignment

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist."

### Explanation of each file

* `features.txt`: Names of the 561 features (records).
* `activity_labels.txt`: Names and IDs for each of the 6 activities.

## Train files
* `X_train.txt`: 7352 records (observations) of the 561 features, for 21 of the 30 volunteers.
* `y_train.txt`: File with 7352 integers,  representing the ID of the activity related to each of the observations in `X_train.txt`.
* `subject_train.txt`: File with  of 7352 integers,  representing the ID of the volunteer related to each of the observations in `X_train.txt`.

## Test Files

* `X_test.txt`: 2947 observations of the 561 features, for 9 of the 30 volunteers.
* `y_test.txt`: File with 2947 rows (integers),  representing the ID of the activity related to each of the observations in `X_test.txt`.
* `subject_test.txt`: A vector of 2947 integers,  representing the ID of the volunteer related to each of the observations in `X_test.txt`.

You can access the detailed information in the files given by coursera.
* `README.txt` General description. 
* `features_info.txt` Detailed information about the features.


### Processing steps

1. All of the relevant data files were read into data frames, appropriate column headers were added, and the training and test sets were combined into a single data set.
2. All feature columns were removed that did not contain the exact string "mean()" or "std()". This left 66 feature columns, plus the subjectID and activity columns.
3. The activity column was converted from a integer to a factor, using labels describing the activities.
4. A tidy data set was created containing the mean of each feature for each subject and each activity. Thus, subject #1 has 6 rows in the tidy data set (one row for each activity), and each row contains the mean value for each of the 66 features for that subject/activity combination. Since there are 30 subjects, there are a total of 180 rows.
5. The tidy data set was output to a CSV file.