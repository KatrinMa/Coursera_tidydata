##Description daten

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using 
a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, 
the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using 
another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the 
Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

varname_mean denotes the mean of the variable

varname_std denote the standard deviation of the variable


##Column names / description
* subject 		        subject_id
* activity_id 		    activity_id
* activity_text   	    activity_id translated in descriptive activity names
* tbodyacc_mean_xyz	
* tbodyacc_std_xyz	
* tgravityacc_mean_xyz
* tgravityacc_std_xyz
* tbodyaccjerk_mean_xyz
* tbodyaccjerk_std_xyz
* tbodygyro_mean_xyz
* tbodygyro_std_xyz
* tbodygyrojerk_mean_xyz
* tbodygyrojerk_std_xyz
* tbodyaccmag_mean
* tbodyaccmag_std
* tgravityaccmag_mean
* tgravityaccmag_std
* tbodyaccjerkmag_mean
* tbodyaccjerkmag_std
* tbodygyromag_mean
* tbodygyromag_std
* tbodygyrojerkmag_mean
* tbodygyrojerkmag_std
* fbodyacc_mean_xyz
* fbodyacc_std_xyz
* fbodyaccjerk_mean_xyz
* fbodyaccjerk_std_xyz
* fbodygyro_mean_xyz
* fbodygyro_std_xyz
* fbodyaccmag_mean
* fbodyaccmag_std
* fbodyaccjerkmag_mean
* fbodyaccjerkmag_std
* fbodygyromag_mean
* fbodygyromag_std
