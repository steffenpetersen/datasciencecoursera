# 1
# Merges the training and the test sets to create one data set.

## Import name data
data.features  <- as.character(read.table("features.txt")[,2])
data.activities <- read.table("activity_labels.txt")
colnames(data.activities) <- c("activity", "activity_label")

## Import and format test data
data.test <- read.table("test/X_test.txt")
colnames(data.test) <- data.features

data.test.subject <- read.table("test/subject_test.txt")
colnames(data.test.subject) <- c("subject")
data.test.activity <- read.table("test/y_test.txt")
colnames(data.test.activity) <- c("activity")

data.test.activity <- merge(data.test.activity, data.activities, by = "activity", all.x = TRUE)

data.test <- cbind(data.test.subject, data.test.activity, data.test)

## Import and format train data
data.train <- read.table("train/X_train.txt")
colnames(data.train) <- data.features

data.train.subject <- read.table("train/subject_train.txt")
colnames(data.train.subject) <- c("subject")
data.train.activity <- read.table("train/y_train.txt")
colnames(data.train.activity) <- c("activity")

data.train.activity <- merge(data.train.activity, data.activities, by = "activity", all.x = TRUE)

data.train <- cbind(data.train.subject, data.train.activity, data.train)

## Merge the two data sets

data <- rbind(data.test, data.train)

# 2-4
# Extracts only the measurements on the mean and standard deviation for each measurement.

toMatch <- c("mean()", "std()")
matches <- unique (grep(paste(toMatch,collapse="|"), data.features, value=TRUE))

tdata <- data[,c("subject","activity_label",matches)]

write.table(tdata, "tidy-data-meanstd.txt", row.names = FALSE)

# 5
# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

library(reshape2)

tdata.melt <- melt(tdata,id=c("subject","activity_label"))
tdata.average <- dcast(tdata.melt, subject + activity_label ~ variable,mean)

write.table(tdata.average, "tidy-data-averages.txt", row.names = FALSE)
