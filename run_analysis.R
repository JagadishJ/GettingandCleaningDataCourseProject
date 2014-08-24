
#changing the default value in print
options(max.print=1000000)

#read the features table
features = read.table("./features.txt", sep="")

#read the activity_labels table
activity_labels = read.table("./activity_labels.txt", sep="")
colnames(activity_labels) <- c("activity", "activityname")

##Read and bind the subject_.txt files from test and train folders
X_test = read.table("./test/X_test.txt", sep="")
X_train = read.table("./train/X_train.txt", sep="")
X_testtrain <- rbind(X_test, X_train)

#remove "-" and "()" from the column names
modfeatures <- gsub("[()-]", "", features$V2)

#assign the column names for the columns in X_testtrain
colnames(X_testtrain) <- modfeatures

#Extract only the measurements on the mean and standard deviation
X_testtrain_subset <- subset(X_testtrain, select = c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543))

##Read and bind the Y_.txt files from test and train folders
Y_test = read.table("./test/Y_test.txt", sep="\t")
Y_train = read.table("./train/Y_train.txt", sep="\t")
Y_testtrain <- rbind(Y_test, Y_train)

#create column names and merging tables
colnames(Y_testtrain) <- c("activity")
mergeddt <- merge(Y_testtrain, activity_labels, sort = FALSE)

##Read and bind the subject_.txt files from test and train folders
subjecttest = read.table("./test/subject_test.txt", sep="\t")
subjecttrain = read.table("./train/subject_train.txt", sep="\t")
subjecttesttrain <- rbind(subjecttest, subjecttrain)
colnames(subjecttesttrain) <- c("subject")

##column binding for subject, activity and measurements tables
bind_sub_act_measure <- cbind(subjecttesttrain, mergeddt, X_testtrain_subset)

##calculate average of each variable for each activity and each subject
tidydataset <-aggregate(bind_sub_act_measure[,4:69], by=list(subject = bind_sub_act_measure$subject, activity = bind_sub_act_measure$activity, activityname = bind_sub_act_measure$activityname), FUN=mean)

#writing out the tidydataset
write.table(tidydataset, file = "./tidydata.txt", row.name=FALSE)
