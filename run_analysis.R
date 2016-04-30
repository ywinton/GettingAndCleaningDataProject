run_analysis <- function() {
    #Read list of all features, select features vector as full
    #header (header).  Use as features with mean and std as desired 
    #header (header2)
    features<-read.table("UCI HAR Dataset/features.txt")
    header<-features[,2]
    header2 <- grep("-mean\\(\\)|-std\\(\\)", header)
    
    #Read activity label and assign column names
    activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")
    colnames(activity_labels)<-c("label","activity")
    #Read training set, assign full header then select columns with mean and 
    #std only (header2)
    X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
    names(X_train)<-header
    X_train1<-X_train[,header2]
    #Read training label
    y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
    colnames(y_train)<-c("label")
    #Read subject for trainig set, assign column name
    subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
    colnames(subject_train)<-c("subject")
    #combine subject, traning label and training set
    traincbind<-data.frame(cbind(subject_train,y_train,X_train1))
    #Add Activity label to training set 
    mtraining=merge(activity_labels,traincbind, by.x="label", by.y="label")

 
    #Read test set, assign full header then select columns with mean and 
    #std only (header2)
    X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
    names(X_test)<-header
    X_test1<-X_test[,header2]
    #Read test label
    y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
    colnames(y_test)<-c("label")
    #Read subject for test set, assign column name
    subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
    colnames(subject_test)<-c("subject")
    #combine subject, test label and test set
    testcbind<-data.frame(cbind(subject_test,y_test,X_test1))
    #Add Activity label to test set 
    mtest=merge(activity_labels,testcbind, by.x="label", by.y="label")
    #combine test and training sets, throw out activity numeric label
    fullset<-data.frame(rbind(mtest,mtraining))
    fullset1<-subset(fullset,select=-c(label))
    #Clean up variable names and assign more descriptive variable names
    names(fullset1)<-gsub("^t","time",names(fullset1))
    names(fullset1)<-gsub("^f","frequency",names(fullset1))
    names(fullset1)<-gsub("BodyBody","Body",names(fullset1))
    names(fullset1)<-gsub("Mag","Magnitude",names(fullset1))
    names(fullset1)<-gsub(".mean","-mean",names(fullset1))
    names(fullset1)<-gsub(".std","-std",names(fullset1))
    names(fullset1)<-gsub("mean..","mean()",names(fullset1))
    names(fullset1)<-gsub("std..","std()",names(fullset1))
    names(fullset1)<-gsub(").",")-",names(fullset1))
    write.table(fullset1, "merged_test_train.txt")
    
    #Create data set with the average of each variable for each activity 
    #and each subject.

    library(data.table)
    fulltable<-data.table(fullset1)
    avgdt<-fulltable[,lapply(.SD,mean),by=c("subject","activity")]
    sortavg<-avgdt[order(activity,subject),]
    write.table(sortavg, "avgby_activity_subject.txt", row.names = FALSE)
    
    
}