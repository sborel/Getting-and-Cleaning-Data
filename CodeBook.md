==================================================================
## Code book for R script called run_analysis.R
==================================================================
The data provided is split into muliple files.
First, the data sets must be combined and named.

The data sets with the variables and observations for test 
("test/X_test.txt") and train ("train/X_train.txt") sets are 
combined. Along with the activity type defined by a number (1-6)
("test/y_test.txt or "train/y_train.txt") 
and the subject number (1-30) from ("train/subject_train.txt" or 
"test/subject_test.txt")

The dplyr package is used to analyze the data.

The columns with variables that describe the mean() or the std()
of the calculations were selected. The names of the variables
were tailored to remove errors and unneccesary symbols. Since
the names of the columns contained many desciptor words, it was
chosen not to change the CamelCase structure for visual clarity and 
the short forms were kept to not make the col names overly long. 

The analysis used the group_by function to first group by activity 
and then subject. This grouped data set was used to fins the mean in
each of the column in the group. Thus, the final tidy data set 
contains the mean of each of the 66 variables for each (activity,
subject) group.

See below for column name descriptors

* ActivityType

a character string naming one of the 6 possible acitivites:
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

* subject

a number (1-30) representing the subjects in the study

EXPERIMENTAL VALUES (66 variables):

* tBodyAccmeanX

time domain signals; body acceleration mean signal in X direction 

* tBodyAccmeanY

time domain signals; body acceleration mean signal in Y direction 

* tBodyAccmeanZ

time domain signals; body acceleration mean signal in Z direction 

* tGravityAccmeanX

time domain signals; gravity acceleration mean signal in X direction 

* tGravityAccmeanY

time domain signals; gravity acceleration mean signal in Y direction 

* tGravityAccmeanZ

time domain signals; gravity acceleration mean signal in Z direction 

* tBodyAccJerkmeanX

time domain signals; body acceleration Jerk mean signal in X direction 

* tBodyAccJerkmeanY

time domain signals; body acceleration Jerk mean signal in Y direction 

* tBodyAccJerkmeanZ

time domain signals; body acceleration Jerk mean signal in Z direction 

* tBodyGyromeanX

time domain signals; body gyroscope mean signal in X direction 

* tBodyGyromeanY

time domain signals; body gyroscope mean signal in Y direction 

* tBodyGyromeanZ

time domain signals; body gyroscope mean signal in Z direction 

* tBodyGyroJerkmeanX

time domain signals; body gyroscope Jerk mean signal in X direction 

* tBodyGyroJerkmeanY

time domain signals; body gyroscope Jerk mean signal in Y direction 

* tBodyGyroJerkmeanZ

time domain signals; body gyroscope Jerk mean signal in Z direction 

* tBodyAccMagmean

time domain signals; body acceleration magnitude mean signal 

* tGravityAccMagmean

time domain signals; gravity acceleration magnitude mean signal 

* tBodyAccJerkMagmean

time domain signals; body acceleration Jerk magnitude mean signal 

* tBodyGyroMagmean

time domain signals; body gyroscope magnitude mean signal 

* tBodyGyroJerkMagmean

time domain signals; body gyroscope Jerk magnitude mean signal 

* fBodyAccmeanX

frequency domain signals;body acceleration mean signal in X direction 

* fBodyAccmeanY

frequency domain signals;body acceleration mean signal in Y direction 

* fBodyAccmeanZ

frequency domain signals;body acceleration mean signal in Z direction 

* fBodyAccJerkmeanX

frequency domain signals;body acceleration Jerk mean signal in X direction 

* fBodyAccJerkmeanY

frequency domain signals;body acceleration Jerk mean signal in Y direction 

* fBodyAccJerkmeanZ

frequency domain signals;body acceleration Jerk mean signal in Z direction 

* fBodyGyromeanX

frequency domain signals;body gyroscope mean signal in X direction 

* fBodyGyromeanY

frequency domain signals;body gyroscope mean signal in Y direction 

* fBodyGyromeanZ

frequency domain signals;body gyroscope mean signal in Z direction 

* fBodyAccMagmean

frequency domain signals;body acceleration magnitude mean signal 

* fBodyAccJerkMagmean

frequency domain signals;body acceleration Jerk magnitude mean signal 

* fBodyGyroMagmean

frequency domain signals;body gyroscope magnitude mean signal 

* fBodyGyroJerkMagmean

frequency domain signals;body gyroscope Jerk magnitude mean signal 

* tBodyAccstdX

time domain signals; body acceleration standard deviation of signalin X direction 

* tBodyAccstdY

time domain signals; body acceleration standard deviation of signalin Y direction 

* tBodyAccstdZ

time domain signals; body acceleration standard deviation of signalin Z direction 

* tGravityAccstdX

time domain signals; gravity acceleration standard deviation of signalin X direction 

* tGravityAccstdY

time domain signals; gravity acceleration standard deviation of signalin Y direction 

* tGravityAccstdZ

time domain signals; gravity acceleration standard deviation of signalin Z direction 

* tBodyAccJerkstdX

time domain signals; body acceleration Jerk standard deviation of signalin X direction 

* tBodyAccJerkstdY

time domain signals; body acceleration Jerk standard deviation of signalin Y direction 

* tBodyAccJerkstdZ

time domain signals; body acceleration Jerk standard deviation of signalin Z direction 

* tBodyGyrostdX

time domain signals; body gyroscope standard deviation of signalin X direction 

* tBodyGyrostdY

time domain signals; body gyroscope standard deviation of signalin Y direction 

* tBodyGyrostdZ

time domain signals; body gyroscope standard deviation of signalin Z direction 

* tBodyGyroJerkstdX

time domain signals; body gyroscope Jerk standard deviation of signalin X direction 

* tBodyGyroJerkstdY

time domain signals; body gyroscope Jerk standard deviation of signalin Y direction 

* tBodyGyroJerkstdZ

time domain signals; body gyroscope Jerk standard deviation of signalin Z direction 

* tBodyAccMagstd

time domain signals; body acceleration magnitude standard deviation of signal

* tGravityAccMagstd

time domain signals; gravity acceleration magnitude standard deviation of signal

* tBodyAccJerkMagstd

time domain signals; body acceleration Jerk magnitude standard deviation of signal

* tBodyGyroMagstd

time domain signals; body gyroscope magnitude standard deviation of signal

* tBodyGyroJerkMagstd

time domain signals; body gyroscope Jerk magnitude standard deviation of signal

* fBodyAccstdX

frequency domain signals;body acceleration stime domain signals; din X direction 

* fBodyAccstdY

frequency domain signals;body acceleration stime domain signals; din Y direction 

* fBodyAccstdZ

frequency domain signals;body acceleration stime domain signals; din Z direction 

* fBodyAccJerkstdX

frequency domain signals;body acceleration Jerk stime domain signals; din X direction 

* fBodyAccJerkstdY

frequency domain signals;body acceleration Jerk stime domain signals; din Y direction 

* fBodyAccJerkstdZ

frequency domain signals;body acceleration Jerk stime domain signals; din Z direction 

* fBodyGyrostdX

frequency domain signals;body gyroscope stime domain signals; din X direction 

* fBodyGyrostdY

frequency domain signals;body gyroscope stime domain signals; din Y direction 

* fBodyGyrostdZ

frequency domain signals;body gyroscope stime domain signals; din Z direction 

* fBodyAccMagstd

frequency domain signals;body acceleration magnitude stime domain signals; d

* fBodyAccJerkMagstd

frequency domain signals;body acceleration Jerk magnitude stime domain signals; d

* fBodyGyroMagstd

frequency domain signals;body gyroscope magnitude stime domain signals; d

* fBodyGyroJerkMagstd

frequency domain signals;body gyroscope Jerk magnitude stime domain signals; d

