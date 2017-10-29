==============================================================================================================
Peer-graded Assignment: Getting and Cleaning Data Course Project
==============================================================================================================

Assumption: data is downloaded from 
              "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
            and unzipped in the working directory

Code Steps:
- Import data to R
- Merge test and train data
- Select mean and std of x, drop remaining variables
- Rename columns to descriptive variable names (all in lower capitals)
- Join y and activity_labels to translate activity_id
- Join subject, y and x  (result = daten)
- Group by subject, activity_id and activity_text, calulate mean of all remaining columns (result = daten_3)

Created data sets:
- daten         (description in DATEN_INFO.txt)
- daten_3	same columns as in daten, but averaged per subject/activity


