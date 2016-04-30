##Overview
======================================
The experiments have been carried out with a group of 30 volunteers who each performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

##Raw Data: run_analysis() obtain dataset from files:
===============================================
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

##Datasets:
========
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

##Variables
=========

subject - the subject 1-30 who performed the activity for each window sample.                       
activity- walking, walking upstairs, walking downstairs, sitting, standing, laying     
For all following variables: 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions
mean(): Mean value
std(): Standard deviation

Time domain signals: from the accelerometer and gyroscope (timeBodyGyro-XYZ) 3-axial raw signals, the acceleration signal was then separated into body (timeBodyAcc-XYZ) and gravity acceleration signals (timeGravityAcc-XYZ)
timeBodyAcc-mean()-X               
timeBodyAcc-mean()-Y                 
timeBodyAcc-mean()-Z                  
timeBodyAcc-std()-X                  
timeBodyAcc-std()-Y                
timeBodyAcc-std()-Z                  
timeGravityAcc-mean()-X               
timeGravityAcc-mean()-Y              
timeGravityAcc-mean()-Z               
timeGravityAcc-std()-X               
timeGravityAcc-std()-Y              
timeGravityAcc-std()-Z 
timeBodyAccJerk-std()-Z              
timeBodyGyro-mean()-X                 
timeBodyGyro-mean()-Y                
timeBodyGyro-mean()-Z                 
timeBodyGyro-std()-X                 
timeBodyGyro-std()-Y                  
timeBodyGyro-std()-Z      

Time domain signals: The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ from the accelerometer and timeBodyGyroJerk-XYZ from gyroscope )

timeBodyAccJerk-mean()-X             
timeBodyAccJerk-mean()-Y             
timeBodyAccJerk-mean()-Z              
timeBodyAccJerk-std()-X              
timeBodyAccJerk-std()-Y               
timeBodyGyroJerk-mean()-X             
timeBodyGyroJerk-mean()-Y            
timeBodyGyroJerk-mean()-Z             
timeBodyGyroJerk-std()-X             
timeBodyGyroJerk-std()-Y              
timeBodyGyroJerk-std()-Z   

The magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag)

timeBodyAccMagnitude-mean()           
timeBodyAccMagnitude-std()           
timeGravityAccMagnitude-mean()        
timeGravityAccMagnitude-std()        
timeBodyAccJerkMagnitude-mean()       
timeBodyAccJerkMagnitude-std()       
timeBodyGyroMagnitude-mean()          
timeBodyGyroMagnitude-std()          
timeBodyGyroJerkMagnitude-mean()      
timeBodyGyroJerkMagnitude-std()  

Frequency Domain Signals:
A Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcc-XYZ, frequencyBodyAccJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccJerkMag, frequencyBodyGyroMag, frequencyBodyGyroJerkMag. 
frequencyBodyAcc-mean()-X             
frequencyBodyAcc-mean()-Y            
frequencyBodyAcc-mean()-Z             
frequencyBodyAcc-std()-X             
frequencyBodyAcc-std()-Y              
frequencyBodyAcc-std()-Z             
frequencyBodyAccJerk-mean()-X         
frequencyBodyAccJerk-mean()-Y        
frequencyBodyAccJerk-mean()-Z         
frequencyBodyAccJerk-std()-X         
frequencyBodyAccJerk-std()-Y          
frequencyBodyAccJerk-std()-Z         
frequencyBodyGyro-mean()-X            
frequencyBodyGyro-mean()-Y           
frequencyBodyGyro-mean()-Z            
frequencyBodyGyro-std()-X            
frequencyBodyGyro-std()-Y             
frequencyBodyGyro-std()-Z            
frequencyBodyAccMagnitude-mean()      
frequencyBodyAccMagnitude-std()      
frequencyBodyAccJerkMagnitude-mean()  
frequencyBodyAccJerkMagnitude-std()  
frequencyBodyGyroMagnitude-mean()     
frequencyBodyGyroMagnitude-std()     
frequencyBodyGyroJerkMagnitude-mean() 
frequencyBodyGyroJerkMagnitude-std() 
