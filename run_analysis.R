# Load packages

library("data.table")
library("reshape2")

# Load tables
message("Loading table...")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

message("Loading test data...")
x_test <- read.table("./UCI HAR Dataset/test/x_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

message("Loading training data...")
x_train <- read.table("./UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Use descriptive activity names to name the activities in the data set
names(x_test) <- features
names(x_train) <- features

# Extract only the measurements on the mean and standard deviation for each measurement.
message("Extracting mean and STD measurements...")
extracted_measurements <- grepl("mean|std", features)
x_test <- x_test[,extracted_measurements]
x_train <- x_train[,extracted_measurements]

## Label the data set with descriptive variable names
message("Labeling the data set...")
y_test[,2] <- activity_labels[y_test[,1]]
names(y_test) <- c("id", "activity")
names(subject_test) <- "subject"

y_train[,2] <- activity_labels[y_train[,1]]
names(y_train) <- c("id", "activity")
names(subject_train) <- "subject"

# Merge the training and the test sets to create one data set
message("Merging the training and test sets...")
test_data <- cbind(subject_test,x_test,y_test)
train_data <- cbind(subject_train, x_train, y_train)

tidy_data <- rbind(test_data, train_data)

# Create a tidy data set with the average of each variable for each activity and each subject 
message("Creating new tidy data set with the mean...")
melt <- melt(tidy_data, id= c("subject", "id", "activity"))
tidy_data_mean <- dcast(melt, subject + activity ~ variable, mean)

# Save the tidy data table on file
message("Exporting data sets to files...")
write.table(tidy_data, file = "./TidyData.txt")
write.table(tidy_data_mean, file = "./TidyDataMean1.txt")

message("Tidy data sets exported.")
