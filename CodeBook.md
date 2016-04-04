# GettingAndCleaningDataAssignment

The description below is from the original data set documentation
(features_info.txt).

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain
signals (prefix 't' to denote time) were captured at a constant rate of
50 Hz. Then they were filtered using a median filter and a 3rd order low
pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
Similarly, the acceleration signal was then separated into body and gravity
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low
pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals
were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag,
tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for
each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

run_analysis.R keeps the following features and computes the mean for these
features for each subject and activity:

|Original Name|New Name|
|tBodyAcc-mean()-X|time_BodyAccelerometer_mean_X|
|tBodyAcc-mean()-Y                       time_BodyAccelerometer_mean_Y
|tBodyAcc-mean()-Z                       time_BodyAccelerometer_mean_Z
tBodyAcc-std()-X                        time_BodyAccelerometer_std_X
tBodyAcc-std()-Y                        time_BodyAccelerometer_std_Y
tBodyAcc-std()-Z                        time_BodyAccelerometer_std_Z
tGravityAcc-mean()-X                    time_GravityAccelerometer_mean_X
tGravityAcc-mean()-Y                    time_GravityAccelerometer_mean_Y
tGravityAcc-mean()-Z                    time_GravityAccelerometer_mean_Z
tGravityAcc-std()-X                     time_GravityAccelerometer_std_X
tGravityAcc-std()-Y                     time_GravityAccelerometer_std_Y
tGravityAcc-std()-Z                     time_GravityAccelerometer_std_Z
tBodyAccJerk-mean()-X                   time_BodyAccelerometerJerk_mean_X
tBodyAccJerk-mean()-Y                   time_BodyAccelerometerJerk_mean_Y
tBodyAccJerk-mean()-Z                   time_BodyAccelerometerJerk_mean_Z
tBodyAccJerk-std()-X                    time_BodyAccelerometerJerk_std_X
tBodyAccJerk-std()-Y                    time_BodyAccelerometerJerk_std_Y
tBodyAccJerk-std()-Z                    time_BodyAccelerometerJerk_std_Z
tBodyGyro-mean()-X                      time_BodyGyroscope_mean_X
tBodyGyro-mean()-Y                      time_BodyGyroscope_mean_Y
tBodyGyro-mean()-Z                      time_BodyGyroscope_mean_Z
tBodyGyro-std()-X                       time_BodyGyroscope_std_X
tBodyGyro-std()-Y                       time_BodyGyroscope_std_Y
tBodyGyro-std()-Z                       time_BodyGyroscope_std_Z
tBodyGyroJerk-mean()-X                  time_BodyGyroscopeJerk_mean_X
tBodyGyroJerk-mean()-Y                  time_BodyGyroscopeJerk_mean_Y
tBodyGyroJerk-mean()-Z                  time_BodyGyroscopeJerk_mean_Z
tBodyGyroJerk-std()-X                   time_BodyGyroscopeJerk_std_X
tBodyGyroJerk-std()-Y                   time_BodyGyroscopeJerk_std_Y
tBodyGyroJerk-std()-Z                   time_BodyGyroscopeJerk_std_Z
tBodyAccMag-mean()                      time_BodyAccelerometerMagnitude_mean
tBodyAccMag-std()                       time_BodyAccelerometerMagnitude_std
tGravityAccMag-mean()                   time_GravityAccelerometerMagnitude_mean
tGravityAccMag-std()                    time_GravityAccelerometerMagnitude_std
tBodyAccJerkMag-mean()                  time_BodyAccelerometerJerkMagnitude_mean
tBodyAccJerkMag-std()                   time_BodyAccelerometerJerkMagnitude_std
tBodyGyroMag-mean()                     time_BodyGyroscopeMagnitude_mean
tBodyGyroMag-std()                      time_BodyGyroscopeMagnitude_std
tBodyGyroJerkMag-mean()                 time_BodyGyroscopeJerkMagnitude_mean
tBodyGyroJerkMag-std()                  time_BodyGyroscopeJerkMagnitude_std
fBodyAcc-mean()-X                       frequency_BodyAccelerometer_mean_X
fBodyAcc-mean()-Y                       frequency_BodyAccelerometer_mean_Y
fBodyAcc-mean()-Z                       frequency_BodyAccelerometer_mean_Z
fBodyAcc-std()-X                        frequency_BodyAccelerometer_std_X
fBodyAcc-std()-Y                        frequency_BodyAccelerometer_std_Y
fBodyAcc-std()-Z                        frequency_BodyAccelerometer_std_Z
fBodyAccJerk-mean()-X                   frequency_BodyAccelerometerJerk_mean_X
fBodyAccJerk-mean()-Y                   frequency_BodyAccelerometerJerk_mean_Y
fBodyAccJerk-mean()-Z                   frequency_BodyAccelerometerJerk_mean_Z
fBodyAccJerk-std()-X                    frequency_BodyAccelerometerJerk_std_X
fBodyAccJerk-std()-Y                    frequency_BodyAccelerometerJerk_std_Y
fBodyAccJerk-std()-Z                    frequency_BodyAccelerometerJerk_std_Z
fBodyGyro-mean()-X                      frequency_BodyGyroscope_mean_X
fBodyGyro-mean()-Y                      frequency_BodyGyroscope_mean_Y
fBodyGyro-mean()-Z                      frequency_BodyGyroscope_mean_Z
fBodyGyro-std()-X                       frequency_BodyGyroscope_std_X
fBodyGyro-std()-Y                       frequency_BodyGyroscope_std_Y
fBodyGyro-std()-Z                       frequency_BodyGyroscope_std_Z
fBodyAccMag-mean()                      frequency_BodyAccelerometerMagnitude_mean
fBodyAccMag-std()                       frequency_BodyAccelerometerMagnitude_std
fBodyBodyAccJerkMag-mean()              frequency_BodyAccelerometerJerkMagnitude_mean
fBodyBodyAccJerkMag-std()               frequency_BodyAccelerometerJerkMagnitude_std
fBodyBodyGyroMag-mean()                 frequency_BodyGyroscopeMagnitude_mean
fBodyBodyGyroMag-std()                  frequency_BodyGyroscopeMagnitude_std
fBodyBodyGyroJerkMag-mean()             frequency_BodyGyroscopeJerkMagnitude_mean
fBodyBodyGyroJerkMag-std()              frequency_BodyGyroscopeJerkMagnitude_std
