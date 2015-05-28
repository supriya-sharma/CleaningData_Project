# CleaningData_Project
This repo contains the script "run_analysis.R" and the details associated with all the steps used in cleaning data. 
The original raw data 'UCI Machine Learning Repository' used in the study had two different dataset. 
The training set and test set.

The goal of this analysis is to merge the above two datasets with the 'activity' labels used in the study to 
describe the subject measured. Mean and standard deviation were extracted and merged to create a tidy dataset.

The tidy dataset generated ("tidy_dataset.csv") has one variable for one subject and activity. 
The first row is the header containing names for each column.

##############################################################
+CodeBook:

Raw data: UCI HAR Dataset

Script: run_analysis.R

Training Data :'train/X_train.txt

Test Data : 'test/X_test.txt

Activities:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

'activity_labels.txt': Links the class labels with their activity name.
TimeBodyAccmeanX
Mean accelerometer body time for X-axis.

#####################################################
FreqBodyAccmeanX Mean body accelerometer frequency X-axis.

FreqBodyAccmeanY
Mean body accelerometer frequency Y-axis.

FreqBodyAccmeanZ
Mean body accelerometer frequency Z-axis.

FreqBodyAccstdX
Standard Deviation body accelerometer frequency Y-axis.

FreqBodyAccstdY
Standard Deviation body accelerometer frequency Y-axis.

FreqBodyAccstdZ Standard Deviation body accelerometer frequency Y-axis.

FreqBodyAccJerkmeanX
Mean body accelerometer jerk frequency X-axis.

FreqBodyAccJerkmeanY
Mean body accelerometer jerk frequency Y-axis.

FreqBodyAccJerkmeanZ
Mean body accelerometer jerk frequency Z-axis.

FreqBodyAccJerkstdX
Standard Deviation body accelerometer jerk frequency X-axis.

FreqBodyAccJerkstdY
Standard Deviation body accelerometer jerk frequency Y-axis.

FreqBodyAccJerkstdZ
Standard Deviation body accelerometer jerk frequency Z-axis.

FreqBodyGyromeanX
Mean body gyro frequency X-axis.

FreqBodyGyromeanY==Mean body gyro frequency Y-axis.

FreqBodyGyromeanZ==Mean body gyro frequency Z-axis.

FreqBodyGyrostdX==Standard Deviation body gyro frequency X-axis.
FreqBodyGyrostdY==Standard Deviation body gyro frequency Y-axis.

FreqBodyGyrostdZ==Standard Deviation body gyro frequency Z-axis.

FreqBodyAccMagmean ==Standard Deviation body accelerometer frequency mag.

FreqBodyAccMagstd==Standard Deviation body accelerometer frequency mag.

FreqBodyBodyAccJerkMagmean==Mean body accelerometer jerk frequency mag.

FreqBodyBodyAccJerkMagstd==Standard Deviation body accelerometer jerk frequency mag.

FreqBodyBodyGyroMagmean ==Mean body accelerometer frequency mag.

FreqBodyBodyGyroMagstd==Standard Deviation body accelerometer frequency mag.

FreqBodyBodyGyroJerkMagmean ==Standard Deviation body accelerometer frequency mag.

FreqBodyBodyGyroJerkMagstd ==Standard Deviation body gyroscope frequency mag.

####################################################################

TimeBodyAccmeanY==Mean accelerometer body time for Y-axis.

TimeBodyAccmeanZ==Mean accelerometer body time for Z-axis.

TimeBodyAccstdX== Standard deviation accelerometer body time for X-axis.

TimeBodyAccstdY==Standard deviation accelerometer body time for Y-axis.

TimeBodyAccstdZ==Standard deviation accelerometer body time for Z-axis.

TimeGravityAccmeanX ==Mean accelerometer Gravity time for X-axis.

TimeGravityAccmeanY==Mean accelerometer Gravity time for Y-axis.

TimeGravityAccmeanZ==Mean accelerometer Gravity time for Z-axis.

TimeGravityAccstdX==Standard Deviation accelerometer Gravity time for X-axis.

TimeGravityAccstdY==Standard Deviation accelerometer Gravity time for Y-axis.

TimeGravityAccstdZ==Standard Deviation accelerometer Gravity time for Z-axis.

TimeBodyAccJerkmeanX==Mean accelerometer Jerk time for X-axis.

TimeBodyAccJerkmeanY==Mean accelerometer Jerk time for Y-axis.

TimeBodyAccJerkmeanZ ==Mean accelerometer Jerk time for Z-axis.

TimeBodyAccJerkstdX==Standard Deviation accelerometer Jerk time for X-axis.

TimeBodyAccJerkstdY==Standard Deviation accelerometer Jerk time for Y-axis.

TimeBodyAccJerkstdZ==Standard Deviation accelerometer Jerk time for Z-axis.

TimeBodyGyromeanX==Mean gyroscope body time for X-axis.

TimeBodyGyromeanY ==Mean gyroscope body time for Y-axis.

TimeBodyGyromeanZ==Mean gyroscope body time for Z-axis.

TimeBodyGyrostdX==Standard Deviation gyroscope body time for X-axis.

TimeBodyGyrostdY==Standard Deviation gyroscope body time for Y-axis.

TimeBodyGyrostdZ== Standard Deviation gyroscope body time for Z-axis.

TimeBodyGyroJerkmeanX==Mean gyroscope Jerk time for X-axis.

TimeBodyGyroJerkmeanY==Mean gyroscope Jerk time for Y-axis.

TimeBodyGyroJerkmeanZ==Mean gyroscope Jerk time for Z-axis.

TimeBodyGyroJerkstdX ==Standard Deviation gyroscope Jerk time for X-axis.

TimeBodyGyroJerkstdY==Standard Deviation gyroscope Jerk time for Y-axis.

TimeBodyGyroJerkstdZ ==Standard Deviation gyroscope Jerk time for Z-axis.

TimeBodyAccMagmean== Mean body accelerometer mag time.

TimeBodyAccMagstd==Standard Deviation accelerometer mag time.

TimeGravityAccMagmean== Mean gravity accelerometer mag time.

TimeGravityAccMagstd==Standard Deviation gravity accelerometer mag time.

TimeBodyAccJerkMagmean ==Meanbody accelerometer jerk time.

TimeBodyAccJerkMagstd==Standard Deviation body accelerometer mag time.

TimeBodyGyroMagmean==Mean body gyro mag time.

TimeBodyGyroMagstd==Standard Deviation body gyro mag time.

TimeBodyGyroJerkMagmean==Mean body gyro jerk time.

TimeBodyGyroJerkMagstd ==Standard Deviation body gyro mag time.



+ Training labels.
+Test labels.
+ Final tidy data: tidy_dataset


