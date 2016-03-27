library(dplyr)

activityLabels <- (read.table("UCI HAR Dataset/activity_labels.txt", sep = ""))$V2

features <- (read.table("UCI HAR Dataset/features.txt", sep = ""))$V2

# Process training data
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt", sep = "")
names(xTrain) <- features

yTrain <- read.table("UCI HAR Dataset/train/y_train.txt", sep = "")
names(yTrain) <- "Activity"
yTrain$Activity <- as.factor(yTrain$Activity)
levels(yTrain$Activity) <- activityLabels

subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", sep = "")
names(subjectTrain) <- "Subject"
subjectTrain$Subject <- as.factor(subjectTrain$Subject)

training <- cbind(subjectTrain, yTrain, xTrain)

# Process test data
xTest <- read.table("UCI HAR Dataset/test/X_test.txt", sep = "")
names(xTest) <- features

yTest <- read.table("UCI HAR Dataset/test/y_test.txt", sep = "")
names(yTest) <- "Activity"
yTest$Activity <- as.factor(yTest$Activity)
levels(yTest$Activity) <- activityLabels

subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", sep = "")
names(subjectTest) <- "Subject"
subjectTest$Subject <- as.factor(subjectTest$Subject)

testing <- cbind(subjectTest, yTest, xTest)

# Now combine the training data set with the testing data set
combined <- rbind(training, testing)

# Keep only measurements for mean() and std()
measurementsToKeep <- grep("-(mean|std)\\(\\)", names(combined))
keep <- combined[, c(1, 2, measurementsToKeep)]

# Now compute the mean for the measurements for each subject regardless of activity
averagesPerSubject <- keep %>%
  group_by(Subject) %>%
  summarise_each(funs(mean(., na.rm = TRUE, -Activity)))

# Now compute the mean for the measurements for each activity regardless of subject
averagesPerActivity <- keep %>%
  group_by(Activity) %>%
  summarise_each(funs(mean(., na.rm = TRUE, -Subject)))

# Now compute the mean for the measurements for each subject and activity
averagesPerSubjectAndActivity <- keep %>%
  group_by(Subject, Activity) %>%
  summarise_each(funs(mean(., na.rm = TRUE)))

# Save the last summary to a file
write.table(as.data.frame(averagesPerSubjectAndActivity), file = "AveragesPerSubjectAndActivity.txt", row.name = FALSE)

