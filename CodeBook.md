Getting and Cleaning Data - Codebook - Course Project 

The course project uses data from the Human Activity Recognition Using Smartphones Dataset

Source data can be found here: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data was acumulated from 30 volunteers within 19-48 years, performing six activities: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. 

Data was source from the accelerometer and gyroscope within a Samsung Galaxy S II worn on the waist of each of the test subjects. 

3 axial linear and angular acceleration was captured at a constant rate of 50Hz, and data was randomly partitioned into two sets where 70% of the volunteers were selected for generating training data and the remaining 30% for generating the test data. 

########## Changes and modifications to Source Data.

For the purposes of this Course project the data has been merged back to form one total data repository.

Additionally the Y data ( Y_test.txt and Y_train.txt) representing the activity undertaken, and the Subject data ( subject_test.txt and subject_train.txt) were appended to maintain the Subject and activity with the original data.

Activity Labels were sourced from the supplied activity_labels.txt and appended in replacement of the value, to add the activity description to the data for ease of understanding.

variable(feature) labels were sourced from the supplied features.txt however many of the labels had issues both in structure and in compatibility with the R language.

A lot of labels were reformatted or addressed, to correct small errors etc, these included:

'BodyBody' replaced with 'Body'
'tBody' replaced with 'time.body.'
'tGravity' replaced with 'time.gravity.'
'fBody' replaced with 'frequency.body.'
'fGravity' replaced with 'frequency.gravity.'
'AccJerk' replaced with 'acc.jerk'
'GyroJerk' replaced with 'gyro.jerk'
'AccMean' replaced with 'acc.Mean'
'Mean,gravity' replaced with 'Mean.gravity'
'BodyAcc' replaced with 'body.acc.'
'BodyGyro' replaced with 'body.gyro.'
',gravityMean' replaced with '.gravity.Mean'
'AccMag' replaced with 'acc.mag'
'angle' replaced with 'angle.'
'-mean' replaced with '.Mean.'
'-std' replaced with '.Std.'
'AccMean,Gravity' replaced with 'acc.mean.gravity'
'jerkMag' replaced with 'jerk.mag'
'GyroMag' replaced with 'Gyro.Mag'
'jerkMean' replaced with 'jerk.Mean'
'GyroMean' replaced with 'Gyro.Mean'
'gravityMean' replaced with 'gravity.Mean'

and finally and most importantly

'[-()]' replaced with ''  ( nothing - to clear out incompatible characters in labels)

Once all data was in a table with proper labels, plus activity and subject, we cull down table to only those columns we want to keep ( being those with Mean and Std. Dev data).

This data is then aggregated by activity and subject, and mean calculated.

Finally data is exported to a file tidiedUp.txt in the working directory, with tab delimited and row.name=FALSE as requested in the Project.

Exported data therefore contains 180 observations in 88 variables being :

activity
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING
        
subject
        Subject identifier between 1 and 30 
        
        
time.body.acc.mean.x

time.body.acc.mean.y

time.body.acc.mean.z

time.body.acc.std.x

time.body.acc.std.y

time.body.acc.std.z

time.gravity.acc.mean.x

time.gravity.acc.mean.y

time.gravity.acc.mean.z

time.gravity.acc.std.x

time.gravity.acc.std.y

time.gravity.acc.std.z

time.body.acc.jerk.mean.x

time.body.acc.jerk.mean.y

time.body.acc.jerk.mean.z

time.body.acc.jerk.std.x

time.body.acc.jerk.std.y

time.body.acc.jerk.std.z

time.body.gyro.mean.x

time.body.gyro.mean.y

time.body.gyro.mean.z

time.body.gyro.std.x

time.body.gyro.std.y

time.body.gyro.std.z

time.body.gyro.jerk.mean.x

time.body.gyro.jerk.mean.y

time.body.gyro.jerk.mean.z

time.body.gyro.jerk.std.x

time.body.gyro.jerk.std.y

time.body.gyro.jerk.std.z

time.body.acc.mag.mean.

time.body.acc.mag.std.

time.gravity.acc.mag.mean.

time.gravity.acc.mag.std.

time.body.acc.jerk.mag.mean.

time.body.acc.jerk.mag.std.

time.body.gyro.mag.mean.

time.body.gyro.mag.std.

time.body.gyro.jerk.mag.mean.

time.body.gyro.jerk.mag.std.

frequency.body.acc.mean.x

frequency.body.acc.mean.y

frequency.body.acc.mean.z

frequency.body.acc.std.x

frequency.body.acc.std.y

frequency.body.acc.std.z

frequency.body.acc.mean.freqx

frequency.body.acc.mean.freqy

frequency.body.acc.mean.freqz

frequency.body.acc.jerk.mean.x

frequency.body.acc.jerk.mean.y

frequency.body.acc.jerk.mean.z

frequency.body.acc.jerk.std.x

frequency.body.acc.jerk.std.y

frequency.body.acc.jerk.std.z

frequency.body.acc.jerk.mean.freqx

frequency.body.acc.jerk.mean.freqy

frequency.body.acc.jerk.mean.freqz

frequency.body.gyro.mean.x

frequency.body.gyro.mean.y

frequency.body.gyro.mean.z

frequency.body.gyro.std.x

frequency.body.gyro.std.y

frequency.body.gyro.std.z

frequency.body.gyro.mean.freqx

frequency.body.gyro.mean.freqy

frequency.body.gyro.mean.freqz

frequency.body.acc.mag.mean.

frequency.body.acc.mag.std.

frequency.body.acc.mag.mean.freq

frequency.body.acc.jerk.mag.mean.

frequency.body.acc.jerk.mag.std.

frequency.body.acc.jerk.mag.mean.freq

frequency.body.gyro.mag.mean.

frequency.body.gyro.mag.std.

frequency.body.gyro.mag.mean.freq

frequency.body.gyro.jerk.mag.mean.

frequency.body.gyro.jerk.mag.std.

frequency.body.gyro.jerk.mag.mean.freq

angle.time.body.acc.mean.gravity

angle.time.body.acc.jerk.mean.gravity.mean

angle.time.body.gyro.mean.gravity.mean

angle.time.body.gyro.jerk.mean.gravity.mean

angle.x.gravity.mean

angle.y.gravity.mean

angle.z.gravity.mean