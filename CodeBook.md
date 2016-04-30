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

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 



subject - the subject 1-30 who performed the activity for each window sample.                       
activity- walking, walking upstairs, walking downstairs, sitting, standing, laying                             
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
timeBodyAccJerk-mean()-X             
timeBodyAccJerk-mean()-Y             
timeBodyAccJerk-mean()-Z              
timeBodyAccJerk-std()-X              
timeBodyAccJerk-std()-Y               
timeBodyAccJerk-std()-Z              
timeBodyGyro-mean()-X                 
timeBodyGyro-mean()-Y                
timeBodyGyro-mean()-Z                 
timeBodyGyro-std()-X                 
timeBodyGyro-std()-Y                  
timeBodyGyro-std()-Z                 
timeBodyGyroJerk-mean()-X             
timeBodyGyroJerk-mean()-Y            
timeBodyGyroJerk-mean()-Z             
timeBodyGyroJerk-std()-X             
timeBodyGyroJerk-std()-Y              
timeBodyGyroJerk-std()-Z             
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
