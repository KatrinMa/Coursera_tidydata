## Assumption: data is downloaded and unzipped in working directory

## Import data to R
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Merge test and train 
subject <- rbind(subject_train, subject_test)
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)

## Select mean and std out of x, drop remaining variables,  
x_2 <- select(x, c(V1, V2, V3, V4, V5, V6, V41, V42, V43, V44, V45, V46, V81, V82, V83, V84, V85, V86, V121, V122, V123, V124, V125, V126, 
                          V161, V162, V163, V164, V165, V166, V201, V202, V214, V215, V227, V228, V240, V241, V253, V254, V266, V267, V268, V269,
                         V270, V271, V345, V346, V347, V348, V349, V350, V424, V425, V426, V427, V428, V429, V503, V504, V516, V517, V529, V530, V542, V543))

## Rename columns
names(x_2) <- tolower(c("tBodyAcc_mean_x", "tBodyAcc_mean_y", "tBodyAcc_mean_z", "tBodyAcc_std_x", "tBodyAcc_std_y", "tBodyAcc_std_z", "tGravityAcc_mean_x", 
                            "tGravityAcc_mean_y", "tGravityAcc_mean_z", "tGravityAcc_std_x", "tGravityAcc_std_y", "tGravityAcc_std_z", "tBodyAccJerk_mean_x", 
                            "tBodyAccJerk_mean_y", "tBodyAccJerk_mean_z", "tBodyAccJerk_std_x", "tBodyAccJerk_std_y", "tBodyAccJerk_std_z", "tBodyGyro_mean_x", 
                            "tBodyGyro_mean_y", "tBodyGyro_mean_z", "tBodyGyro_std_x", "tBodyGyro_std_y", "tBodyGyro_std_z", "tBodyGyroJerk_mean_x", 
                            "tBodyGyroJerk_mean_y", 
                            "tBodyGyroJerk_mean_z", "tBodyGyroJerk_std_x", "tBodyGyroJerk_std_y", "tBodyGyroJerk_std_z", "tBodyAccMag_mean", "tBodyAccMag_std",
                            "tGravityAccMag_mean", "tGravityAccMag_std", "tBodyAccJerkMag_mean", "tBodyAccJerkMag_std", "tBodyGyroMag_mean", "tBodyGyroMag_std",
                            "tBodyGyroJerkMag_mean", "tBodyGyroJerkMag_std", "fBodyAcc_mean_x", "fBodyAcc_mean_y", "fBodyAcc_mean_z", "fBodyAcc_std_x", "fBodyAcc_std_y", 
                            "fBodyAcc_std_z", "fBodyAccJerk_mean_x", "fBodyAccJerk_mean_y", "fBodyAccJerk_mean_z", "fBodyAccJerk_std_x", "fBodyAccJerk_std_y", 
                            "fBodyAccJerk_std_z", "fBodyGyro_mean_x", "fBodyGyro_mean_y", "fBodyGyro_mean_z", "fBodyGyro_std_x", "fBodyGyro_std_y","fBodyGyro_std_z", 
                            "fBodyAccMag_mean", "fBodyAccMag_std", "fBodyBodyAccJerkMag_mean", "fBodyBodyAccJerkMag_std", "fBodyBodyGyroMag_mean", "fBodyBodyGyroMag_std", 
                            "fBodyBodyGyroJerkMag_mean", "fBodyBodyGyroJerkMag_std"))


## Generate understandable column names
names(subject) <- "subject"
names(y) <- "activity_id"
names(activity_labels) <- c("activity_id", "activity_text")

## Join y and activity_labels to get descriptive activity names
y_2 <- left_join(y, activity_labels)

## Join subject, y_2 and x_2
daten <- cbind(subject, y_2, x_2)

## Group by subject, activity_id and activity_text and calculate column means
daten_2 <- group_by(daten, subject, activity_id, activity_text)
daten_3 <- summarize_all(daten_2, mean, na.rm=TRUE)




