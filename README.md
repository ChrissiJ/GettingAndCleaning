
# README for assignment for 'Getting and cleaning data'


## Content of github repository

1. README.md: explains the analysis
2. run_analysis.R: file that prepares the data according to the task (see below)
3. codebook.md: Codebook for the created data
4. second_dataset.txt: a tidy dataset containing the average of each variable for each activity and each subject.

## Description of original data

#### The original data can be found at: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#### The original description of the data by the authors of the data:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

## Task associated with run_analysis.R

* Merges the training and the test sets to create one data set
* Extracts only the measurements on the mean and standard deviation for each measurement: Here defined as the variables containing mean() or std() in their name.
* Uses descriptive activity names to name the activities in the data set: Is done based on the activity labels provided y the authors of the data
* Appropriately labels the data set with descriptive variable names: I kept the original variable names but got rid of some of the special characters like () and -. What descriptive names are is probably highly subjective and thus I kept the main bits from the original names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. This is done in the last step using elements from dplyr

#### Why the data are tidy
1. Each variable forms a column; here acivityID, activityName, subjectID and the different measurements taken (only means and standard deviations from the original dataset)
2. Each different observation of that variable should be in a different row; the dataset is in longformat, thus every row corresponds to an observation on a specific activity for one of the subjects. Row one for example has all the variables related to one of the measurements taken for individual one for the activity walking. Row two corresponds to another measurement taken for individual one on the activity walking and so on. We thus have a long format here, but it is still tidy.


#### Why the second_dataset.txt is tidy:
The second dataset has one row for each activity for each individual (6:30=180 rows). Each colum is the mean of the available measurements for each inidividual on the different activities.


