) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data
Overview
======================================
The experiments have been carried out with a group of 30 volunteers who each performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

For each record it is provided:
======================================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

run_analysis() obtain dataset from files:
=========================================
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
Variables
=========

subject - the subject 1-30 who performed the activity for each window sample.                       
activity- walking, walking upstairs, walking downstairs, sitting, standing, laying     

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

Time domain signals: The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ from the accelerometer and timeBodyGyroJerk-XYZ from gyroscope ).
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

The magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 
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
