
# Read and combine the measurements data.
testSet <- read.table("test/X_test.txt")
trainSet <- read.table("train/X_train.txt")
allSet <- rbind(testSet,trainSet)

# Read feature names to be used as column names.
features <- read.table("features.txt")[,2]

# Select only columns that we need.
featuresSelected <- grepl("(std|mean)\\(\\)", features)


# Keep only column names we need for the data set.
featureNames <- features[featuresSelected]

# Clean up the column names into something more practical.
featureNames <- gsub('[-()]', '', gsub('-mean', 'Mean', gsub('-std', 'Std', featureNames)))

# Filter the measurement data set to contain only columns we need.
allSet <- allSet[featuresSelected]

# Make sure that all measurement data values are numeric
allSet <- as.data.frame(lapply(allSet,as.numeric))

# Apply column names to the measurement data set.
names(allSet) <- featureNames

# Read all subject data.
testSub <- read.table("test/subject_test.txt")
trainSub <- read.table("train/subject_train.txt")
allSub <- rbind(testSub, trainSub)

# Combine subject data with measurement data.
allSet$subject <- allSub[,1]

# Read all activity data.
testAct <- read.table("test/Y_test.txt")
trainAct <- read.table("train/Y_train.txt")
allAct <- rbind(testAct, trainAct)

# Read activity labels.
activityLabels <- read.table("activity_labels.txt")[,2]

# Add activity data to the measurement data as number and as label.
allSet$activityId <- allAct[,1]
allSet$activity <- activityLabels[allAct[,1]]

# Compose averages data set by activity and by subject.
comp <- aggregate(allSet[,c(1:66)], by = list(activity = allSet$activity, subject = allSet$subject), mean)

# Write the data composition to file.
write.table(comp, file = "result.txt", row.name = FALSE )

# end of code
