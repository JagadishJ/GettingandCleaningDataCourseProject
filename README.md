==================================================================
Getting and Cleaning Data Course Project
==================================================================

This script is used to read the Samsung data from the train and test folders and does the following actions:
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The following steps are followed in the script:
1) read the features.txt file
2) read the activity_labels.txt file
3) Read and bind the subject_.txt files from test and train folders
4) remove "-" and "()" from the column names so that the column names are free of special characters.
5) assign the column names for the columns in X_testtrain
6) Extract only the measurements on the mean and standard deviation
7) Read and bind the Y_.txt files from test and train folders
8) create column names and merging tables
9) Read and bind the subject_.txt files from test and train folders
10) column binding for subject, activity and measurements tables
11) calculate average of each variable for each activity and each subject
12) writing out the tidydataset
