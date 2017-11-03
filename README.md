##================================================================
##Peer-graded Assignment: Getting and Cleaning Data Course Project
##================================================================


##================================================================
##Generell information:
Human Activity Recognition Using Smartphones Dataset
Version 1.0
 
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed
six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) 
on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at
a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding
windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion
components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is 
assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector
of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
##=======================================================================================================================================


##Assumption: 
  data is downloaded from 
      "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  and unzipped in the working directory

##Code Steps:
- Import data to R
- Merge test and train data
- Select mean and std of x, drop remaining variables
- Rename columns to descriptive variable names (all in lower capitals)
- Join y and activity_labels to translate activity_id
- Join subject, y and x  (result = daten)
- Group by subject, activity_id and activity_text, calulate mean of all remaining columns (result = daten_3)

##Created data sets:
- daten     (description in CODEBOOK.md)
- daten_3	same columns as in daten, but averaged per subject/activity


