## GettingAndCleaningDataProject

- Download the raw data from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Description of these files could be found in [Code Book](./CodeBook.md).
- Execute the run_analysis.R script: source('run_analysis.R')
- When complete, a file named avgby_activity_subject.txt will be created in the working directory.
- Details about the output data can be found in [Code Book](./CodeBook.md).

##Description in Analysis
- First read list of all features, select features vector as full header (header).  Use as features with mean and std as desired header (header2)
- Read training set, assign full header then select columns with mean and std only (header2)
- Read training label
- Read subject for trainig set, assign column name
- combine activity, subject, traning label and training set
- Read test set, assign full header then select columns with mean and std only (header2)
- Read test label
- Read subject for test set, assign column name
- Combine subject, test label and test set
- Combine test and activity, training sets, throw out activity numeric label
- Clean up variable names and assign more descriptive variable names
- Create and output data set with the average of each variable for each activity and each subject.

##Description of datasets
- features: reads features.txt
- header: vector of feature names
- header2: subset of header only contains mean and std columns
- activity_labels: reads activity_labels.txt activity labels
- X_train: reads X_train.txt training set
- X_train1: subset of X_train only retains variable columns with mean and std
- y_train: reads y_train training labels
- subject_train: reads subject_train.txt subjecct of training set
- mtraining: Final training set Combines activity_labels, subject_train, y_train, X_train1
- X_test: reads X_test.txt test set
- X_test1: subset of X_test only retains variable columns with mean and std
- y_test: reads y_test test labels
- subject_test: reads subject_test.txt subject of test set
- mtest: Final test set Combines activity_labels, subject_test, y_test, X_test
- fullset1: Combines final training set and final test set
- sortavg: Final data set for this project, this is a sorted data set that takes average of each variable for each activity and each subject from fullset1
