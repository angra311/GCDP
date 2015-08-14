---
title: "Codebook"
output: html_document
---
This codebook is the data dictionary for the Course Project.  It is derived from the data available [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  A description of that data is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The source data consists of smartphone data collected while 30 human subjects engaged in 6 types of activities.  This dataset provides average values for each subject/activity pair across many of the variables.  A description of the variables is given below.

## Data
### Labels
* "Activity" 

Labelled activities, based on human observation of video records.

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

* "Subject" 

Integer 1-30 indicating which human subject generated the data


### Sensors
Mean and Standard deviation data from sensors.  The variables collected below are all from the original data set with "mean" or "std" in the variable name.  All variables are unitless and normalized to [-1, 1].  Groups with {XYZ} suffixes are triaxial measurements.  For each type of sensor, a mean (mean) and standard deviation (std) is given.  Direct measurements have a name prefix of "t".  For some of the measurements, a Fourier Transform was performed, creating spectrum measurements that have a name prefix of "f"

* "tBodyAcc.mean...X" "tBodyAcc.mean...Y" "tBodyAcc.mean...Z" 
* "tBodyAcc.std...X" "tBodyAcc.std...Y" "tBodyAcc.std...Z" 
* "fBodyAcc.mean...X" "fBodyAcc.mean...Y" "fBodyAcc.mean...Z" 
* "fBodyAcc.std...X" "fBodyAcc.std...Y" "fBodyAcc.std...Z" 

Non-gravity body acceleration

* "tGravityAcc.mean...X" "tGravityAcc.mean...Y" "tGravityAcc.mean...Z" 
* "tGravityAcc.std...X" "tGravityAcc.std...Y" "tGravityAcc.std...Z" 

Gravity acceleration

* "tBodyAccJerk.mean...X" "tBodyAccJerk.mean...Y" "tBodyAccJerk.mean...Z" 
* "tBodyAccJerk.std...X" "tBodyAccJerk.std...Y" "tBodyAccJerk.std...Z" 
* "fBodyAccJerk.mean...X" "fBodyAccJerk.mean...Y" "fBodyAccJerk.mean...Z"
* "fBodyAccJerk.std...X" "fBodyAccJerk.std...Y" "fBodyAccJerk.std...Z" 

First derivative of body acceleration

* "tBodyGyro.mean...X" "tBodyGyro.mean...Y" "tBodyGyro.mean...Z" 
* "tBodyGyro.std...X" "tBodyGyro.std...Y" "tBodyGyro.std...Z" 
* "fBodyGyro.mean...X" "fBodyGyro.mean...Y" "fBodyGyro.mean...Z" 
* "fBodyGyro.std...X" "fBodyGyro.std...Y" "fBodyGyro.std...Z" 

Orientation

* "tBodyGyroJerk.mean...X" "tBodyGyroJerk.mean...Y" "tBodyGyroJerk.mean...Z"
* "tBodyGyroJerk.std...X" "tBodyGyroJerk.std...Y" "tBodyGyroJerk.std...Z" 

First derivative of orientation acceleration

* "tBodyAccMag.mean.." 
* "tBodyAccMag.std.." 
* "fBodyAccMag.mean.." 
* "fBodyAccMag.std.." 

Magnitude of non-gravity body acceleration

* "tGravityAccMag.mean.." 
* "tGravityAccMag.std.." 

Magnitude of gravity acceleration

* "tBodyAccJerkMag.mean.." 
* "tBodyAccJerkMag.std.." 
* "fBodyBodyAccJerkMag.mean.." 
* "fBodyBodyAccJerkMag.std.." 

Magnitude of first derivative of acceleration

* "tBodyGyroMag.mean.." 
* "tBodyGyroMag.std.." 
* "fBodyBodyGyroMag.mean.." 
* "fBodyBodyGyroMag.std.." 

Magnitude of orientation change

* "tBodyGyroJerkMag.mean.." 
* "tBodyGyroJerkMag.std.." 
* "fBodyBodyGyroJerkMag.mean.." 
* "fBodyBodyGyroJerkMag.std.."

Magnitude of first derivative of orientation change

* "angle.tBodyAccMean.gravity." 

Angle between gravity and body acceleration

* "angle.tBodyAccJerkMean..gravityMean." 

Angle between first derivative of gravity and body acceleration

* "angle.tBodyGyroMean.gravityMean." 

Angle between body orientation and gravity

* "angle.tBodyGyroJerkMean.gravityMean." 

Angle between first derivative of body orientation and gravity

* "angle.X.gravityMean." "angle.Y.gravityMean." "angle.Z.gravityMean." 

X,Y,Z components of the angle of gravity

