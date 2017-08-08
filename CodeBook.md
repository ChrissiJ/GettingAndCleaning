
# Codebook for assignment - Getting and cleaning data

This codebook describes the variables, the data, and any transformations or work that was performed to append and clean the data for the assignment.

## Original data 

The original data can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

The description by the authors:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:    

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.


## Variables in the dataset resulting from run_analysis.R
* Identifiers: 
     * subjectID identifies the subject to which the measurement belongs (values between 1 and 30)
     * activityName identifies the activity for which the measurement was taken using a string (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
     * activityID identifies the activity as well but with the original numeric code (values between 1 and 6)
* The remaining variables: Descriptions for the remaining variables can be found in the features_info.txt file for the original datasets. However, only variables related to the mean and standard deviation were kept and the original names were being stripped off special characters like () and -. The variables are: 
     * tBodyAccMeanX
     * tBodyAccMeanY
     * tBodyAccMeanZ           
     * tBodyAccStdX
     * tBodyAccStdY
     * tBodyAccStdZ            
     * tGravityAccMeanX
     * tGravityAccMeanY
     * tGravityAccMeanZ        
     * tGravityAccStdX
     * tGravityAccStdY
     * tGravityAccStdZ         
     * tBodyAccJerkMeanX
     * tBodyAccJerkMeanY 
     * tBodyAccJerkMeanZ       
     * tBodyAccJerkStdX
     * tBodyAccJerkStdY
     * tBodyAccJerkStdZ        
     * tBodyGyroMeanX
     * tBodyGyroMeanY 
     * tBodyGyroMeanZ          
     * tBodyGyroStdX
     * tBodyGyroStdY
     * tBodyGyroStdZ           
     * tBodyGyroJerkMeanX
     * tBodyGyroJerkMeanY
     * tBodyGyroJerkMeanZ      
     * tBodyGyroJerkStdX
     * tBodyGyroJerkStdY
     * tBodyGyroJerkStdZ       
     * tBodyAccMagMean
     * tBodyAccMagStd
     * tGravityAccMagMean      
     * tGravityAccMagStd
     * tBodyAccJerkMagMean
     * tBodyAccJerkMagStd      
     * tBodyGyroMagMean
     * tBodyGyroMagStd
     * tBodyGyroJerkMagMean    
     * tBodyGyroJerkMagStd
     * fBodyAccMeanX
     * fBodyAccMeanY           
     * fBodyAccMeanZ
     * fBodyAccStdX
     * fBodyAccStdY            
     * fBodyAccStdZ
     * fBodyAccJerkMeanX
     * fBodyAccJerkMeanY       
     * fBodyAccJerkMeanZ
     * fBodyAccJerkStdX
     * fBodyAccJerkStdY        
     * fBodyAccJerkStdZ
     * fBodyGyroMeanX
     * fBodyGyroMeanY          
     * fBodyGyroMeanZ
     * fBodyGyroStdX
     * fBodyGyroStdY           
     * fBodyGyroStdZ
     * fBodyAccMagMean
     * fBodyAccMagStd          
     * fBodyBodyAccJerkMagMean
     * fBodyBodyAccJerkMagStd
     * fBodyBodyGyroMagMean    
     * fBodyBodyGyroMagStd
     * fBodyBodyGyroJerkMagMean
     * fBodyBodyGyroJerkMagStd 