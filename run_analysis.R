# Read in the Training Data

train = read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
train[,562] = read.csv("UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
train[,563] = read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)


# Read in the Test Data

test = read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
test[,562] = read.csv("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
test[,563] = read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)


# Read in the Activity Labels

activityLabels = read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)


# Read features and make some substitutions to fix label incompatibility and formats

features = read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
features[,2] = gsub('BodyBody', 'Body', features[,2])
features[,2] = gsub('tBody', 'time.body.', features[,2])
features[,2] = gsub('tGravity', 'time.gravity.', features[,2])
features[,2] = gsub('fBody', 'frequency.body.', features[,2])
features[,2] = gsub('fGravity', 'frequency.gravity.', features[,2])
features[,2] = gsub('AccJerk', 'acc.jerk', features[,2])
features[,2] = gsub('GyroJerk', 'gyro.jerk', features[,2])
features[,2] = gsub('AccMean', 'acc.Mean', features[,2])
features[,2] = gsub('Mean,gravity', 'Mean.gravity', features[,2])
features[,2] = gsub('BodyAcc', 'body.acc.', features[,2])
features[,2] = gsub('BodyGyro', 'body.gyro.', features[,2])
features[,2] = gsub(',gravityMean', '.gravity.Mean', features[,2])
features[,2] = gsub('AccMag', 'acc.mag', features[,2])
features[,2] = gsub('angle', 'angle.', features[,2])
features[,2] = gsub('-mean', '.Mean.', features[,2])
features[,2] = gsub('-std', '.Std.', features[,2])
features[,2] = gsub('AccMean,Gravity', 'acc.mean.gravity', features[,2])

features[,2] = gsub('jerkMag', 'jerk.mag', features[,2])
features[,2] = gsub('GyroMag', 'Gyro.Mag', features[,2])
features[,2] = gsub('jerkMean', 'jerk.Mean', features[,2])
features[,2] = gsub('GyroMean', 'Gyro.Mean', features[,2])
features[,2] = gsub('gravityMean', 'gravity.Mean', features[,2])

features[,2] = gsub('[-()]', '', features[,2])


# Merge the train and test data together

allCombinedData = rbind(train, test)


# List all columns we want to calculate data on e.g. mean and std. dev.

columnsWeWant <- grep(".*Mean.*|.*Std.*", features[,2])


# Cut the features table down to only those we want

features <- features[columnsWeWant,]


# Add on the subject and activity columns

columnsWeWant <- c(columnsWeWant, 562, 563)


# Remove the excess unwanted columns from allCombinedData

allCombinedData <- allCombinedData[,columnsWeWant]


# Add column names (features) to allCombinedData

colnames(allCombinedData) <- c(features$V2, "Activity", "Subject")
colnames(allCombinedData) <- tolower(colnames(allCombinedData))
currentActivity = 1

for (currentActivityLabel in activityLabels$V2) {
        allCombinedData$activity <- gsub(currentActivity, currentActivityLabel, allCombinedData$activity)
        currentActivity <- currentActivity + 1
}
allCombinedData$activity <- as.factor(allCombinedData$activity)
allCombinedData$subject <- as.factor(allCombinedData$subject)

tidiedUp = aggregate(allCombinedData, by=list(activity = allCombinedData$activity, subject=allCombinedData$subject), mean)


# Finally remove the subject and activity columns, getting a mean on those is irrelevant

tidiedUp[,90] = NULL
tidiedUp[,89] = NULL


# Write out teh cleaned up data.

write.table(tidiedUp, "tidiedUp.txt", row.name=FALSE, sep="\t")