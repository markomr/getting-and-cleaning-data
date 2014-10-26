# Getting and Cleaning Data

## Course project

The goal was to further process data from smartphone recorded human activity project. The original project information can be found from
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] and the data can be downloaded from
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip].

## What this analysis does

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. Use data from step 4 to create a second data set with the average of each variable for each activity and each subject.

## How to run the analysis

1. Download original data and uncompress the zip file
2. Copy run_analysis.R file into the uncompressed data directory
3. Start R console and set working directory to data folder i.e. setwd("UCI HAR Dataset")
4. Run the analysis by issuing command source("run_analysis.R")
5. Fresh result.txt file will be created in current folder

