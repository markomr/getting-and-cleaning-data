

## The original data

The original data contains details about the measurements.

Originally the data contained 561 different measurements but we are only interested in mean and standard deviation for each measurement. The number of columns is reduced to 66 mean and standard deviation measurement columns in the same order as in original data.

* tBodyAccMeanX, tBodyAccMeanY, tBodyAccMeanZ
* tBodyAccStdX, tBodyAccStdY, tBodyAccStdZ
* tGravityAccMeanX, tGravityAccMeanY, tGravityAccMeanZ
* tGravityAccStdX, tGravityAccStdY, tGravityAccStdZ
* tBodyAccJerkMeanX, tBodyAccJerkMeanY, tBodyAccJerkMeanZ       
* tBodyAccJerkStdX, tBodyAccJerkStdY, tBodyAccJerkStdZ
* tBodyGyroMeanX, tBodyGyroMeanY, tBodyGyroMeanZ
* tBodyGyroStdX, tBodyGyroStdY, tBodyGyroStdZ
* tBodyGyroJerkMeanX, tBodyGyroJerkMeanY, tBodyGyroJerkMeanZ
* tBodyGyroJerkStdX, tBodyGyroJerkStdY, tBodyGyroJerkStdZ
* tBodyAccMagMean, tBodyAccMagStd
* tGravityAccMagMean, tGravityAccMagStd
* tBodyAccJerkMagMean, tBodyAccJerkMagStd
* tBodyGyroMagMean, tBodyGyroMagStd
* tBodyGyroJerkMagMean, tBodyGyroJerkMagStd
* fBodyAccMeanX, fBodyAccMeanY, fBodyAccMeanZ
* fBodyAccStdX, fBodyAccStdY, fBodyAccStdZ
* fBodyAccJerkMeanX, fBodyAccJerkMeanY, fBodyAccJerkMeanZ 
* fBodyAccJerkStdX, fBodyAccJerkStdY, fBodyAccJerkStdZ
* fBodyGyroMeanX, fBodyGyroMeanY, fBodyGyroMeanZ
* fBodyGyroStdX, fBodyGyroStdY, fBodyGyroStdZ
* fBodyAccMagMean, fBodyAccMagStd
* fBodyBodyAccJerkMagMean, fBodyBodyAccJerkMagStd
* fBodyBodyGyroMagMean, fBodyBodyGyroMagStd
* fBodyBodyGyroJerkMagMean, fBodyBodyGyroJerkMagStd

## Processing steps performed by run_analysis.R

1. Combine test and training measurement data X_test.txt and X_train.txt (in this order).

2. Read measurement feature names to be used as column names.

3. Select only columns that contain either mean or standard deviation measurements.

4. Rename columns so that the names are more clean and can be used in R more efficiently. In practice remove parenthesis and dashes from the names and capitalize-first the "Mean" and "Std" parts of the column names. For example "tBodyAcc-mean()-X" becomes "tBodyAccMeanX".

5. Filter measurement data to contain only the selected measurement values (mean, std).

6. Ensure that all measurement data values are processed as numeric. The original data is already cleaned up from NAs.

7. Apply easier column names to the measurement data frame.

8. Read all human subject data files subject_test.txt and subject_train.txt combined (in this order).

9. Combine subject data with measurement data. The subject data is one integer column named as "subject".

10. Read all activity data files Y_test.txt and Y_train.txt combined (in this order).

11. Read activity labels (activity_labels.txt). There are 6 different types of activities.

12. Add activity data to the measurement data as new columns. Both the activity number ("activityId") and corresponding activity label ("activity") is pushed to measurement data frame.

13. Compose measurement averages data set by "activity" column and by "subject".

14. Write the data composition to "result.txt" file in the current working directory.


## Output file contents

The data columns are the following
1. The activity label "activity"
2. The subject id "subject"
3. The 66 average values of data columns

The column names are included in the result.txt since the ordering of columns is not enforced but derives from the original data.

