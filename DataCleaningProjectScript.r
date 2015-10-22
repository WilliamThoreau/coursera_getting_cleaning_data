  
#############Projet Cleaning and Getting Data###########

rm(list=ls(all=TRUE))  ## Clear all variables

## Getting the test tables
FilePath <- paste0("./UCI HAR Dataset/test/X_test.txt")
X_test <- read.table(FilePath)
FilePath <- paste0("./UCI HAR Dataset/test/Y_test.txt")
Y_test <- read.table(FilePath)
FilePath <- paste0("./UCI HAR Dataset/test/subject_test.txt") 
subject_test <- read.table(FilePath)
FilePath <- paste0("./UCI HAR Dataset/test/subject_test.txt") 
subject_test <- read.table(FilePath)
## Getting the train tables
FilePath <- paste0("./UCI HAR Dataset/train/X_train.txt")  
X_train <- read.table(FilePath)
FilePath <- paste0("./UCI HAR Dataset/train/Y_train.txt")  
Y_train <- read.table(FilePath)
FilePath <- paste0("./UCI HAR Dataset/train/subject_train.txt") 
subject_train <- read.table(FilePath)

	## 1) Merge the training and test data set
X_Data <- rbind(X_test,X_train)
Y_Data <- rbind(Y_test,Y_train)
Subject_Data <- rbind(subject_test,subject_train)

	## 2) Select only mean et std variables from the X_Data data set
## Get the Features table
FilePath <- paste0("./UCI HAR Dataset/features.txt") 
Features <- read.table(FilePath)
## put the raw names on the columns of X_Data
colnames(X_Data) <- Features[,2]
## Select only the columns that contains mean() and std() variables
X_Data_MeanAndStd <- X_Data[,grepl("mean()", colnames(X_Data),fixed = TRUE ) | grepl("std()", colnames(X_Data),fixed = TRUE)]


	## 3) Replace Activity labels
## Read Activity labels
FilePath <- paste0("./UCI HAR Dataset/activity_labels.txt") 
ActivityLabels <- read.table(FilePath)
## Replace the numbers by the names
j <- 0 ## initialize the counter
for(i in 1 : nrow(Y_Data)) {
	j<-j+1
	Y_Data[i,1] <- toString(ActivityLabels[Y_Data[i,1],2])
}


	## 4) Columns Formatting
##Clean,Format then Name the X_Data_MeanAndStd Dataset from the Features name list
ProperColNames<- gsub("[^[:alpha:]]", "", colnames(X_Data_MeanAndStd))
ProperColNames<- gsub("bodybody", "body", tolower(ProperColNames),fixed = TRUE )
ProperColNames<- gsub("acc", "acceleration", ProperColNames,fixed = TRUE )
colnames(X_Data_MeanAndStd) <- ProperColNames
##Name the Y_Data Dataset
colnames(Y_Data) <- "typeofactivity"
##Name the Subject_Data Dataset
colnames(Subject_Data) <- "subject"



## Finalize the merging by adding the columns "Subject_Data" and  "Y_Data"  to  X_Data tables
Full_Data <- cbind(Subject_Data,Y_Data,X_Data_MeanAndStd)


	## 5) Aggregate the data by "subject" and "TypeOfActivity"
AggregatedData <- aggregate(Full_Data[, 3:ncol(Full_Data)],by=list(subject = Full_Data$subject, typeofactivity = Full_Data$typeofactivity),mean)

## Generate a text file from the resulting table
write.table(AggregatedData, "ProjectOutputTable.txt", row.name=FALSE)

