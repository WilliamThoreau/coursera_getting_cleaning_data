##Coursera Getting and cleaning data Project 

Goal is to create a tidy data set from data collected from the accelerometers of a Samsung Galaxy S phone
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data is here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Files in this repository

	*README.md - This file, contains the overall description of the project
	*DataCleaningProjectScript.R - The R script to run to clean the dataset
	*CodeBook.md - Describes the variables, the data, and the transformations or work that performed to clean up the data

###How to clean the dataset?

* 1) Get the data set 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* 2) Unzip it in your working directory
You should now have a folder called "UCI HAR Dataset" in your working directory

* 3) Run the script DataCleaningProjectScript.R in your favorite IDE (e.g. RStudio)
This one script performs all the actions needed to get and clean the dataset

* 4) Enjoy the clean dataset 
A text file called "ProjectOutputTable.txt" is created in your working directory.
It contains the cleaned dataset as per the methodology explained in the CodeBook