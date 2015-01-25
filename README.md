run_analysis.R is a script to tidy and sort the data provided from Samsung Galaxy sII accelerometers. 

The data in question can be found at : 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

However, the run_analysis.R script assumes the data has already been downloaded and unpacked to the working directory and left in its default folder structure. 

Therefore you should load the run_analysis.R script in the working directory, which should also contain the data directory "UCI HAR Dataset" and its associated subfolders and data.

The main data being the files X_test.txt and X_train.txtcontain 561 variable(feature) result for each observation, and matches to the 561 labels provided in the file features.txt

Output from this Project file can be found in the working directory called tidiedUp.txt representing 180 Observations of 88 Variables(feature).

180 Observations represents 30 Test subjects each completing 6 activities. 
Mean and Standard Deviations for each of the variables groups are then pulled.  

Figures are normalised per the original data to be between -1 to 1.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The Original dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


Credits:

David Hoods Project FAQ Thread at : 
https://class.coursera.org/getdata-010/forum/thread?thread_id=49
