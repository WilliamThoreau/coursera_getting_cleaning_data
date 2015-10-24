
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
timedomainbodyaccelerationmeanx  
timedomainbodyaccelerationmeany  
timedomainbodyaccelerationmeanz  
timedomainbodyaccelerationstdx  
timedomainbodyaccelerationstdy  
timedomainbodyaccelerationstdz  
timedomaingravityaccelerationmeanx  
timedomaingravityaccelerationmeany  
timedomaingravityaccelerationmeanz  
timedomaingravityaccelerationstdx  
timedomaingravityaccelerationstdy  
timedomaingravityaccelerationstdz  
timedomainbodyaccelerationjerkmeanx  
timedomainbodyaccelerationjerkmeany  
timedomainbodyaccelerationjerkmeanz  
timedomainbodyaccelerationjerkstdx  
timedomainbodyaccelerationjerkstdy  
timedomainbodyaccelerationjerkstdz  
timedomainbodygyromeanx  
timedomainbodygyromeany  
timedomainbodygyromeanz  
timedomainbodygyrostdx  
timedomainbodygyrostdy  
timedomainbodygyrostdz  
timedomainbodygyrojerkmeanx  
timedomainbodygyrojerkmeany  
timedomainbodygyrojerkmeanz  
timedomainbodygyrojerkstdx  
timedomainbodygyrojerkstdy  
timedomainbodygyrojerkstdz  
timedomainbodyaccelerationmagmean  
timedomainbodyaccelerationmagstd  
timedomaingravityaccelerationmagmean  
timedomaingravityaccelerationmagstd  
timedomainbodyaccelerationjerkmagmean  
timedomainbodyaccelerationjerkmagstd  
timedomainbodygyromagmean  
timedomainbodygyromagstd  
timedomainbodygyrojerkmagmean  
timedomainbodygyrojerkmagstd  
frequencydomainbodyaccelerationmeanx  
frequencydomainbodyaccelerationmeany  
frequencydomainbodyaccelerationmeanz  
frequencydomainbodyaccelerationstdx  
frequencydomainbodyaccelerationstdy  
frequencydomainbodyaccelerationstdz  
frequencydomainbodyaccelerationjerkmeanx  
frequencydomainbodyaccelerationjerkmeany  
frequencydomainbodyaccelerationjerkmeanz  
frequencydomainbodyaccelerationjerkstdx  
frequencydomainbodyaccelerationjerkstdy  
frequencydomainbodyaccelerationjerkstdz  
frequencydomainbodygyromeanx  
frequencydomainbodygyromeany  
frequencydomainbodygyromeanz  
frequencydomainbodygyrostdx  
frequencydomainbodygyrostdy  
frequencydomainbodygyrostdz  
frequencydomainbodyaccelerationmagmean  
frequencydomainbodyaccelerationmagstd  
frequencydomainbodyaccelerationjerkmagmean  
frequencydomainbodyaccelerationjerkmagstd  
frequencydomainbodygyromagmean  
frequencydomainbodygyromagstd  
frequencydomainbodygyrojerkmagmean  
frequencydomainbodygyrojerkmagstd  

	* Values: correspond to the mean of each variable name accros Subject and typeofactivity
	* Description: Unique identifier assigned to each subject
	
	
	