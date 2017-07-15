download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="data.zip",method="auto")
unzip("data.zip")

#Get the activity and feature information
activity<-read.table("UCI HAR Dataset/activity_labels.txt")
features<-read.table("UCI HAR Dataset/features.txt")

#Extract only the measurements on the mean and standard deviation for each measurement
features_meanstd<-grep(".*mean.*|.*std.*",features$V2)
features_new<-features[features_meanstd,2]
features_new<-gsub('-mean','Mean',features_new)
features_new<-gsub('-std','Std',features_new)

#Getting the train data
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
X_train<-read.table("UCI HAR Dataset/train/X_train.txt")[features_meanstd]
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")#activities


#Get the test data
X_test<-read.table("UCI HAR Dataset/test/X_test.txt")[features_meanstd]
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")#activities
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")

#Merging the train data together columnwise
train<-cbind(y_train,subject_train,X_train)
tra
ncol(y_test)

#Merge the test data together columnwise
test<-cbind(y_test,subject_test,X_test)



#merge train and test(rowwise)
total<-rbind(train,test)
colnames(total)<-c("Activities","Subject",features_new)

#Naming the activities
total$Activities<-factor(total$Activities,levels=as.character(activity[,1]),labels = as.character(activity[,2]))
total$Subject<-as.factor(total$Subject)


#Calculating average of each variable for each activity and subject
molten<-melt(total,id=c("Activities","Subject"))
mean_molten<-dcast(molten,Activities+Subject~variable,mean)
View(mean_molten)


#Saving mean_molten (tidy dataset) in a text file
write.table(mean_molten,"tidy.txt",quote=FALSE)
