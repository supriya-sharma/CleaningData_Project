# CleaningData_Project
This repo contains the script "run_analysis.R" and the details associated with all the steps used in cleaning data. 
The original raw data 'UCI Machine Learning Repository' used in the study had two different dataset. 
The training set and test set.

The goal of this analysis is to merge the above two datasets with the 'activity' labels used in the study to 
describe the subject measured. Mean and standard deviation were extracted and merged to create a tidy dataset.

The tidy dataset generated ("tidy_dataset.csv") has one variable for one subject and activity. 
The first row is the header containing names for each column.


+CodeBook:

+Raw data: UCI HAR Dataset
+Script: run_analysis.R
+Training Data :'train/X_train.txt
+Test Data : 'test/X_test.txt
+Activities:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

+'activity_labels.txt': Links the class labels with their activity name.

+ Training labels.
+Test labels.
+ Final tidy data: tidy_dataset


