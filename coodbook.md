---
title: "Getting and Cleaning Data course Project codebook"
output: html_document
---

## variables

Each feature vector is a row of 68 variables. The measurment variables (all variables except for subject and activity) come from the accelerometer and gyroscope 3-axial raw signals (X, Y, and Z), normalized and bounded within [-1,1]. 

The measurments are collected into two domains:

* Time domain, abbreviated as `time`, resulting from accelerometer and gyroscope raw signals
* Frequency domain, abbreviated as `frequency`, resulting from applying Fast Fourier Transform (FFT) to some signals from accelerometer and gyroscope

Also the `magnitude` of these three-dimensional signals were calculated using the Euclidean norm 

* subject 

    + Identifies the subject who performed the activity, intger, ranges from 1 to 30


* Mean time domain body accelerometer along X, Y, and Z directions:

    + `timeBodyAccelerometer-mean-X`
    + `timeBodyAccelerometer-mean-Y`
    + `timeBodyAccelerometer-mean-Z`

* Standard deviation of time domain body accelerometer along X, Y, and Z directions:

    + `timeBodyAccelerometer-std-X`
    + `timeBodyAccelerometer-std-Y`
    + `timeBodyAccelerometer-std-Z`

* Mean time domain gravity accelerometer along X, Y, and Z directions:

    + `timeGravityAccelerometer-mean-X`
    + `timeGravityAccelerometer-mean-Y`
    + `timeGravityAccelerometer-mean-Z`

* Standard deviation of time domain gravity accelerometer along X, Y, and Z directions:

    + `timeGravityAccelerometer-std-X`
    + `timeGravityAccelerometer-std-Y`
    + `timeGravityAccelerometer-std-Z`

* Mean time domain body accelerometer Jerk signals along X, Y, and Z directions:

    + `timeBodyAccelerometerJerk-mean-X`
    + `timeBodyAccelerometerJerk-mean-Y`
    + `timeBodyAccelerometerJerk-mean-Z`

* Standard deviation of time domain body accelerometer Jerk signals along X, Y, and Z directions:

    + `timeBodyAccelerometerJerk-std-X`
    + `timeBodyAccelerometerJerk-std-Y`
    + `timeBodyAccelerometerJerk-std-Z`

* Mean time domain body gyroscope along X, Y, and Z directions:

    + `timeBodyGyroscope-mean-X`
    + `timeBodyGyroscope-mean-Y`
    + `timeBodyGyroscope-mean-Z`

* Standard deviation of time domain body gyroscope along X, Y, and Z directions:

    + `timeBodyGyroscope-std-X`
    + `timeBodyGyroscope-std-Y`
    + `timeBodyGyroscope-std-Z`
    
* Mean time domain body gyroscope Jerk signals along X, Y, and Z directions:

    + `timeBodyGyroscopeJerk-mean-X`
    + `timeBodyGyroscopeJerk-mean-Y`
    + `timeBodyGyroscopeJerk-mean-Z`
    
* Standard deviation time domain body gyroscope Jerk signals along X, Y, and Z directions:

    + `timeBodyGyroscopeJerk-std-X`
    + `timeBodyGyroscopeJerk-std-Y`
    + `timeBodyGyroscopeJerk-std-Z`

* Mean time domain body accelerometer magnitude: 
    
    +`timeBodyAccelerometerMagnitude-mean`

* Standard deviation time domain body accelerometer magnitude: 
    
    +`timeBodyAccelerometerMagnitude-std`


* Mean time domain gravity accelerometer magnitude:

    +`timeGravityAccelerometerMagnitude-mean`

* Standard deviation time domain gravity accelerometer magnitude:

    +`timeGravityAccelerometerMagnitude-std`
    
* Mean time domain accelerometer Jerk signals magnitude:

    + `timeBodyAccelerometerJerkMagnitude-mean`
    
* Standard deviation of time domain accelerometer Jerk signals magnitude:

    + `timeBodyAccelerometerJerkMagnitude-std`

* Mean time domain body gyroscope magnitude:

    + `timeBodyGyroscopeMagnitude-mean`
    
* Standard deviation of time domain body gyroscope magnitude:

    + `timeBodyGyroscopeMagnitude-std`
    
* Mean time domain body gyroscope Jerk signals magnitude:

    + `timeBodyGyroscopeJerkMagnitude-mean`

* Standard deviation time domain body gyroscope Jerk signals magnitude:

    + `timeBodyGyroscopeJerkMagnitude-std`
    
* Mean frequency domain body accelerometer along X, Y, and Z directions:

    + `frequencyBodyAccelerometer-mean-X`
    + `frequencyBodyAccelerometer-mean-Y`
    + `frequencyBodyAccelerometer-mean-Z`
    

* Standard deviation of frequency domain body accelerometer along X, Y, and Z directions:

    + `frequencyBodyAccelerometer-std-X`
    + `frequencyBodyAccelerometer-std-Y`
    + `frequencyBodyAccelerometer-std-Z`

* Mean frequency domain body accelerometer Jerk signals along X, Y, and Z directions:

    + `frequencyBodyAccelerometerJerk-mean-X`
    + `frequencyBodyAccelerometerJerk-mean-Y`
    + `frequencyBodyAccelerometerJerk-mean-Z`


* Standard deviation frequency domain body accelerometer Jerk signals along X, Y, and Z directions:

    + `frequencyBodyAccelerometerJerk-std-X`
    + `frequencyBodyAccelerometerJerk-std-Y`
    + `frequencyBodyAccelerometerJerk-std-Z`
    
* Mean frequency domain body gyroscope along X, Y, and Z directions:

    + `frequencyBodyGyroscope-mean-X`
    + `frequencyBodyGyroscope-mean-Y`
    + `frequencyBodyGyroscope-mean-Z`
    
* Standard deviation frequency domain body gyroscope along X, Y, and Z directions:

    + `frequencyBodyGyroscope-std-X`
    + `frequencyBodyGyroscope-std-Y`
    + `frequencyBodyGyroscope-std-Z`
    
* Mean frequency domain body accelerometer magnitude:

    + `frequencyBodyAccelerometerMagnitude-mean`

* Standard deviation frequency domain body accelerometer magnitude:

    + `frequencyBodyAccelerometerMagnitude-std`
    
* Mean frequency domain body accelerometer Jerk signals magnitude:

    + `frequencyBodyAccelerometerJerkMagnitude-mean`

* Standard deviation frequency domain body accelerometer Jerk signals magnitude:

    + `frequencyBodyAccelerometerJerkMagnitude-std`


* Mean frequency domain body gyroscope magnitude:

    + `frequencyBodyGyroscopeMagnitude-mean`

* Standard deviation frequency domain body gyroscope magnitude:

    + `frequencyBodyGyroscopeMagnitude-std`
 
* Mean frequency domain body gyroscope Jerk signals magnitude:

    + `frequencyBodyGyroscopeJerkMagnitude-mean`
    
* Standard deviation frequency domain body gyroscope Jerk signals magnitude:

    + `frequencyBodyGyroscopeJerkMagnitude-std`
    
* activity

    Activity labels, string, with values:
    + `WALKING` 
    + `WALKING_UPSTAIRS`
    + `WALKING_DOWNSTAIRS`
    + `STANDING`
    + `SITTING`
    + `LAYING`

## Transformations

The original data are found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following transformations were applied to the original data:

1. The train and test sets were merged into one dataset
2. The measurments only on mean and standard deviation `std` were extracted
3. The vraibles names were replaced with descriptive ones:
    + The `t` and `f` expanded into `time` and `frequency` to indicate the domain
    + `Acc`, `Gyro`, `BodyBody` and `Mag` replaced with `Accelerometer`, `Gyroscope`, `Body`, and `Magnitude`
    + `()` were removed 
4. The activity labels were added instead of the numbers
5. The subject was added to the dataset

`run_analysis.R` contains the code used for these transformations




