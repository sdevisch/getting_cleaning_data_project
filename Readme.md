This is a course project to demonstrate the students ability to collect, work with, 
and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The project produces
1) a tidy data set as described below, 
2) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
3) a README.md file (this file) to describe the project and explain how the scripts workd


Here are the data for the project:
  
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The run_analysis.R  does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
