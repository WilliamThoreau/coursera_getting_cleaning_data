
## This CodeBook describes the variables in the data set

### General description of the variables in the dataset 
(from the http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.



### Below are details about the table, by column


* Column 1
	* Column name: subject
	* Values: 1..30
	* Description: Unique identifier assigned to each subject


* Column 2
	* Column name: typeofactivity
	* Values: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
	* Description: Kind of activity performed by the subject

* Columns 3 to 68

	* Column names:

tbodyaccelerationmeanx
tbodyaccelerationmeany
tbodyaccelerationmeanz
tbodyaccelerationstdx
tbodyaccelerationstdy
tbodyaccelerationstdz
tgravityaccelerationmeanx
tgravityaccelerationmeany
tgravityaccelerationmeanz
tgravityaccelerationstdx
tgravityaccelerationstdy
tgravityaccelerationstdz
tbodyaccelerationjerkmeanx
tbodyaccelerationjerkmeany
tbodyaccelerationjerkmeanz
tbodyaccelerationjerkstdx
tbodyaccelerationjerkstdy
tbodyaccelerationjerkstdz
tbodygyromeanx
tbodygyromeany
tbodygyromeanz
tbodygyrostdx
tbodygyrostdy
tbodygyrostdz
tbodygyrojerkmeanx
tbodygyrojerkmeany
tbodygyrojerkmeanz
tbodygyrojerkstdx
tbodygyrojerkstdy
tbodygyrojerkstdz
tbodyaccelerationmagmean
tbodyaccelerationmagstd
tgravityaccelerationmagmean
tgravityaccelerationmagstd
tbodyaccelerationjerkmagmean
tbodyaccelerationjerkmagstd
tbodygyromagmean
tbodygyromagstd
tbodygyrojerkmagmean
tbodygyrojerkmagstd
fbodyaccelerationmeanx
fbodyaccelerationmeany
fbodyaccelerationmeanz
fbodyaccelerationstdx
fbodyaccelerationstdy
fbodyaccelerationstdz
fbodyaccelerationjerkmeanx
fbodyaccelerationjerkmeany
fbodyaccelerationjerkmeanz
fbodyaccelerationjerkstdx
fbodyaccelerationjerkstdy
fbodyaccelerationjerkstdz
fbodygyromeanx
fbodygyromeany
fbodygyromeanz
fbodygyrostdx
fbodygyrostdy
fbodygyrostdz
fbodyaccelerationmagmean
fbodyaccelerationmagstd
fbodyaccelerationjerkmagmean
fbodyaccelerationjerkmagstd
fbodygyromagmean
fbodygyromagstd
fbodygyrojerkmagmean
fbodygyrojerkmagstd

	* Values: correspond to the mean of each variable name accros Subject and typeofactivity
	* Description: Unique identifier assigned to each subject
	
	
	