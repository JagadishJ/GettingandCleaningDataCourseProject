#Code Book

code inside run_analysis.R

##Variables
`features`: variable for data from the features.txt file
`modfeatures`: variable for modified features names to remove special characters

`activity_labels`: variable for data from the activity_labels.txt file

`X_test`: variable for data from the X_test.txt file
`X_train`: variable for data from the X_train.txt file
`X_testtrain`: variable for binded X_test and X_train data into one data set
`X_testtrain_subset`: variable for extracted measurements on the mean and standard deviation to create this subset.

`Y_test`: variable for data from the Y_test.txt file
`Y_train`: variable for data from the Y_train.txt file
`Y_testtrain`: variable for binds Y_test and Y_train data into one data set
`mergeddt`: variable for data from merging Y_testtrain and activity_labels

`subject_test`: variable for data from the subject_test.txt file
`subject_train`: variable for data from the subject_train.txt file
`subject_testtrain`: variable for binds subject_test and subject_train data into one data set

`bind_sub_act_measure`: variable for column binding for subject, activity and measurements tables

`tidydataset`: variable for calculated average of each variable for each activity and each subject

##Loading data
download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
read the following file:
features.txt
activity_labels.txt
X_test.txt
X_train.txt
Y_test.txt
Y_train.txt
subject_test.txt
subject_train.txt

##Manipulate data
manipulate the data as explained in the `read me.txt’ file and also based on the comments in the `run_analysis.R`

sample data of the final solution
> head(tidydataset, n=3)

"subject" "activity" "activityname" "tBodyAccmeanX" "tBodyAccmeanY" "tBodyAccmeanZ" "tBodyAccstdX" "tBodyAccstdY" .......
	
5 	6 	"LAYING"     0.27963006307  -0.01731958593   -0.1048186111   -0.4207361465  -0.3182870105 .......
6 	6 	"LAYING"     0.27237661418  -0.01756970426   -0.1159945413   -0.5050860850  -0.3684036701 .......
7 	6 	"LAYING"     0.27021169781  -0.01879048876   -0.1124923753   -0.5775183247  -0.5464033653 .......

##Writing final data to text file
creates the output file called tidydata.txt and writes tidydataset data frame to the text file.