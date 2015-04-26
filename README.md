==================================================================
# Desciption of R script called run_analysis.R

==================================================================
## DATA SOURCE

The script uses a data set obtained from the Human Activity 
Recognition Using Smartphones Data Set 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

with a link for the exact data set
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

==================================================================
## DATA SET

The data contains values obtained from 30 participants who performed
6 differnt activities
WALKING,
WALKING_UPSTAIRS, 
WALKING_DOWNSTAIRS, 
SITTING, 
STANDING, 
LAYING
while wearing a smartphone (Samsung Galaxy S II) on the waist.
The accelerometer and gyroscope in the device measured the  3-axial 
linear acceleration and 3-axial angular velocity. 
The data set contained,
* Triaxial acceleration from the accelerometer (total acceleration) 
and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

==================================================================
## DATA SET ANALYSIS

The code aims to symarize the finding from this study. From the 
561 categories of calculations, the mean and std of the signals was 
selected. For the tidy data set,the 10299 observations were sorted
based on the activity being performed and the subject doing 
the activity. From each of these groupings (180 = 6 activities 
x 30 subjects) the mean was taken. 
