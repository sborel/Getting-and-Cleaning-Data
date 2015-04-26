## Coursera: Getting and Cleaning Data
## Final Project
## Creating a tidy data set based on 
## 'Human Activity Recognition Using Smartphones Data Set' 
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

################################################################################
#### Section 1: Preparing data - loading data, names, binding data sets
## Loading data
train.set <- read.table("train/X_train.txt") #load training data set
train.set.y <- read.table("train/y_train.txt") #load activities values (train)
train.subj <- read.table("train/subject_train.txt") #load subject number (test)
test.set <- read.table("test/X_test.txt") #load test data set
test.set.y <- read.table("test/y_test.txt") #load activities by row (test)
test.subj <- read.table("test/subject_test.txt") #load subject number (test)

# Activity names associated with activity number
activity.labels <- read.table("activity_labels.txt") 
# Variable names for collected data
features <- read.table("features.txt")  

## Binding data sets together with their corresponding names
data.bound <- rbind(train.set,test.set) #binding test and training data sets
names(data.bound)<- features$V2 #creating column names
data.bound.y <- rbind(train.set.y,test.set.y) #binding test and training act sets
data.bound.subj <- rbind(train.subj,test.subj) #binding test and training subj sets
#creating column names
names(data.bound.y)<- "activity"
names(data.bound.subj)<- "subject"
#binding all 3 sets of data by column to creat total data set
data.all.nontbl_df <- cbind(data.bound.y,data.bound.subj,data.bound)

library(dplyr) #loading dplyr library for analysis
data.all <- tbl_df(data.all.nontbl_df) #converting data to tbl_df for dplyr use

## Creating valid column names to avoid repeating col names error
valid_column_names <- make.names(names(data.all), unique=TRUE,allow_=F)
names(data.all) <- valid_column_names

################################################################################
### Section 2: Creating tidy data set - subset, rename, group, summarize

## Subsetting data by selecting the columns of interest
data.sub <- select(data.all,
                   contains("activity"),contains("subject"),
                   contains("mean.",ignore.case = FALSE),
                   contains("std."))                   
## keeps only the mean() and std() from 'features_info.txt' 
## and activity and subject column

activity.labels.tdf <- tbl_df(activity.labels) #create tbl_df for dplyr use

# Adding a column that uses desciptive words for activity type 
# It matches activity number to activity name in 'activity_labels.txt'
data.sub.actName <- left_join(data.sub,activity.labels.tdf,by=c("activity"="V1"))

## Improving on variable names for tidy data
# Naming the Activity column
names(data.sub.actName)[names(data.sub.actName) == 'V2'] <-  "ActivityType"
# Removing repeat word error
names(data.sub.actName) <- gsub('BodyBody','Body',names(data.sub.actName))
# Removing periods in the names (they were obained through the make.names
# function)
names(data.sub.actName) <- gsub('[.]','',names(data.sub.actName))

## Rearange dataset 
# (move ActivityType as first column and take out activity by number col)
DS <- select(data.sub.actName,ActivityType,2:68)

## Sorting data set by groups (first by ActivityType and then by subject)
by_act_subj <- group_by(DS,ActivityType,subject) 
#summerize each col variable by their mean
DS_by_act_subj <- summarise_each(by_act_subj, funs(mean)) 

## Created the tidy data set
DS_by_act_subj