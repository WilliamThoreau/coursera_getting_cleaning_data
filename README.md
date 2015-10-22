##Coursera Getting and cleaning data Project 

Goal is to create a tidy data set from data collected from the accelerometers of a Samsung Galaxy S phone
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data is here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Files in this repository

	* README.md - This file, contains the overall description of the project
	* DataCleaningProjectScript.R - The R script to run to clean the dataset
	* CodeBook.md - Describes the variables, the data, and the transformations or work that performed to clean up the data

###How to clean the dataset?

* 1) Get the data set 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* 2) Unzip it in your working directory
You should now have a folder called "UCI HAR Dataset" in your working directory

* 3) Run the script DataCleaningProjectScript.R in your favorite IDE (e.g. RStudio)
This one script performs all the actions needed to get and clean the dataset

* 4) Enjoy the clean dataset 
A text file called "ProjectOutputTable.txt" is created in your working directory.
It contains the cleaned dataset as per the methodology explained in below procedure

### Data cleaning procedure in the R script
Below is a summary of what the code is performing, for more details refer to the comments in the code

*  Step 1
	* Getting the test tables by reading the following tables
./UCI HAR Dataset/test/X_test.txt
./UCI HAR Dataset/test/Y_test.txt
./UCI HAR Dataset/test/subject_test.txt
./UCI HAR Dataset/train/X_train.txt
./UCI HAR Dataset/train/Y_train.txt
./UCI HAR Dataset/train/subject_train.txt
	** Merge the train and test data set


*  Step 2
	* Get the Features table
./UCI HAR Dataset/features.txt
	* Select only the columns that contains mean() and std() variables from the data set


*  Step 3 
	** Read Activity labels
./UCI HAR Dataset/activity_labels.txt
	** Replace the numbers by the names of Activity


*  Step 4  Columns Formatting
	** Clean,Format then Name the Columns from the Features name list
	** Name the Y_Data Dataset
typeofactivity
	** Name the Subject_Data Dataset
subject


*  Step 5 
	** Aggregate the data by "subject" and "TypeOfActivity" and compute mean of variables

	** Generate a text file from the resulting table




