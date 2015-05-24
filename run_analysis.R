## 1 Merge the training and the test sets to create one data set.
## 2 Extract only the measurements on the mean and standard deviation for each measurement. 
## 3 Use descriptive activity names to name the activities in the data set
## 4 Appropriately label the data set with descriptive variable names. 
##5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


######## Training Set ############
training_set <- read.csv("UCI HAR Dataset//train//X_train.txt", header = FALSE, sep = " ", stringsAsFactors = FALSE)
training_label <- read.csv("UCI HAR Dataset/train//y_train.txt")
########Test Set

test_set <- read.csv("UCI HAR Dataset//test/X_test.txt", header = FALSE, sep = " ", stringsAsFactors = FALSE)
test_label <- read.csv("UCI HAR Dataset/test/y_test.txt")


########## Task-1 merge training and test dataset
merge_datasets = function() {
"Merge training and test datasets"

### Read training data

training_set <- read.table("UCI HAR Dataset/train/X_train.txt")

### Read training label

training_label <- read.table("UCI HAR Dataset/train//y_train.txt")
     
### Read subject training text file

training_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")


### Read test data set       

test_set <- read.table("UCI HAR Dataset/test/X_test.txt")


### Read test label

test_label <- read.table("UCI HAR Dataset/test/y_test.txt")
        

### Read test subject text file

test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
       

# A-Merge the above two dataset
merged_dataset <- rbind(training_set, test_set)

# B-Merge the above two labels
merged_label <- rbind(training_label, test_label)
       
### C- Merge subject text files

merged_subject <- rbind(training_subject, test_subject)

# merge train and test datasets and return
list(m=merged_dataset, l=merged_label, subject=merged_subject)
}

##### Task-2 extract measurements on mean & STD
mean_std = function(df) {

# Given the dataset (x values), extract only the measurements on the mean
# and standard deviation for each measurement.
        
# Read the feature list file
features <- read.table("UCI HAR Dataset//features.txt")

# Find the mean and std columns
        mean.col <- sapply(features[,2], function(m) grepl("mean()", m, fixed=T))
        std.col <- sapply(features[,2], function(m) grepl("std()", m, fixed=T))

# Extract above two from the data
        extract <- df[, (mean.col | std.col)]
        colnames(extract) <- features[(mean.col | std.col), 2]
        extract
}

###### Task-3 Describe name activities
name_activities = function(df) {
       
# Use descriptive activity names to name the activities in the dataset
        colnames(df) <- "activity"
        df$activity[df$activity == 1] = "WALKING"
        
        df$activity[df$activity == 2] = "WALKING_UPSTAIRS"
        
        df$activity[df$activity == 3] = "WALKING_DOWNSTAIRS"
        
        df$activity[df$activity == 4] = "SITTING"
        
        df$activity[df$activity == 5] = "STANDING"
        
        df$activity[df$activity == 6] = "LAYING"
        df
}

## Task-4 # Combine mean-std values (x), activities (y) and subjects into one dataframe
bind_data <- function(m, l, subjects) {
        .
        cbind(m, l, subjects)
}

### Task-5 Make a tidy dataset
tidy.dataset = function(df) {
        # Given X values, y values and subjects, create an independent tidy dataset
        # with the average of each variable for each activity and each subject.
        tidy <- ddply(df, .(subject, activity), function(m) colMeans(m[,1:60]))
        tidy
}


# merge training and test datasets. merge.datasets function returns a list
# of three dataframes: m, l, and subject

merged <- merge_datasets()
       
# Extract only the measurements of the mean and standard deviation for each measurement
a <- mean_std(merged$m)
        
# Name activities  
b <- name_activities(merged$l)
        
# Use descriptive column name for subjects
colnames(merged$subject) <- c("subject")
        
# Combine data frames into one
combined <- bind_data(a, b, merged$subject)
        
# Create tidy dataset
tidy_dataset <- tidy.dataset(combined)
        
# Write tidy dataset as csv
write.csv(tidy_dataset, "tidy_dataset.csv", row.names=FALSE)


