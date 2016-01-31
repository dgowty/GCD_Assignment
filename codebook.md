=====================================================================
Author: Doryan Gowty
codebook.MD for run_analysis.R, summary_out.txt
======================================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals.

Observations are identified by the first two columns denoting each human subject and the activity 
they were doing i.e. 

subject 	Activity
1		Walking
1		Sitting
2		Walking
2		Sitting


The following variables(features) all reflect the mean value of the samples provided for each activity. 
Each feature is prefixed by "time" or "frequency" denoting the transformation of method. Time domain signals
where captured at a rate of 50Hz. Frequency domain signals have been through a Fast Fourier Transformation.
Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
(time.BodyAccelerometer.XYZ and timedGravityAccelerometer.XYZ). Subsequently, the body linear acceleration 
and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk.XYZ and 
timeBodyGyroscopeJerk.XYZ). Also the magnitude of these three-dimensional signals were calculated using the 
Euclidean norm (timeBodyAccelerometerMagnitude, etc.). 


These signals were used to estimate variables of the feature vector for each pattern:  
'.XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


Here's a full list of the variables:
	
subjects
activities
time.BodyAccelerometer.X.Mean
time.BodyAccelerometer.Y.Mean
time.BodyAccelerometer.Z.Mean
time.BodyAccelerometer.X.StandardDeviation
time.BodyAccelerometer.Y.StandardDeviation
time.BodyAccelerometer.Z.StandardDeviation
time.GravityAccelerometer.X.Mean
time.GravityAccelerometer.Y.Mean
time.GravityAccelerometer.Z.Mean
time.GravityAccelerometer.X.StandardDeviation
time.GravityAccelerometer.Y.StandardDeviation
time.GravityAccelerometer.Z.StandardDeviation
time.BodyAccelerometerJerk.X.Mean
time.BodyAccelerometerJerk.Y.Mean
time.BodyAccelerometerJerk.Z.Mean
time.BodyAccelerometerJerk.X.StandardDeviation
time.BodyAccelerometerJerk.Y.StandardDeviation
time.BodyAccelerometerJerk.Z.StandardDeviation
time.BodyGyroscope.X.Mean
time.BodyGyroscope.Y.Mean
time.BodyGyroscope.Z.Mean
time.BodyGyroscope.X.StandardDeviation
time.BodyGyroscope.Y.StandardDeviation
time.BodyGyroscope.Z.StandardDeviation
time.BodyGyroscopeJerk.X.Mean
time.BodyGyroscopeJerk.Y.Mean
time.BodyGyroscopeJerk.Z.Mean
time.BodyGyroscopeJerk.X.StandardDeviation
time.BodyGyroscopeJerk.Y.StandardDeviation
time.BodyGyroscopeJerk.Z.StandardDeviation
time.BodyAccelerometerMagnitude.Mean
time.BodyAccelerometerMagnitude.StandardDeviation
time.GravityAccelerometerMagnitude.Mean
time.GravityAccelerometerMagnitude.StandardDeviation
time.BodyAccelerometerJerkMagnitude.Mean
time.BodyAccelerometerJerkMagnitude.StandardDeviation
time.BodyGyroscopeMagnitude.Mean
time.BodyGyroscopeMagnitude.StandardDeviation
time.BodyGyroscopeJerkMagnitude.Mean
time.BodyGyroscopeJerkMagnitude.StandardDeviation
frequency.BodyAccelerometer.X.Mean
frequency.BodyAccelerometer.Y.Mean
frequency.BodyAccelerometer.Z.Mean
frequency.BodyAccelerometer.X.StandardDeviation
frequency.BodyAccelerometer.Y.StandardDeviation
frequency.BodyAccelerometer.Z.StandardDeviation
frequency.BodyAccelerometerJerk.X.Mean
frequency.BodyAccelerometerJerk.Y.Mean
frequency.BodyAccelerometerJerk.Z.Mean
frequency.BodyAccelerometerJerk.X.StandardDeviation
frequency.BodyAccelerometerJerk.Y.StandardDeviation
frequency.BodyAccelerometerJerk.Z.StandardDeviation
frequency.BodyGyroscope.X.Mean
frequency.BodyGyroscope.Y.Mean
frequency.BodyGyroscope.Z.Mean
frequency.BodyGyroscope.X.StandardDeviation
frequency.BodyGyroscope.Y.StandardDeviation
frequency.BodyGyroscope.Z.StandardDeviation
frequency.BodyAccelerometerMagnitude.Mean
frequency.BodyAccelerometerMagnitude.StandardDeviation
frequency.BodyAccelerometerJerkMagnitude.Mean
frequency.BodyAccelerometerJerkMagnitude.StandardDeviation
frequency.BodyGyroscopeMagnitude.Mean
frequency.BodyGyroscopeMagnitude.StandardDeviation
frequency.BodyGyroscopeJerkMagnitude.Mean
frequency.BodyGyroscopeJerkMagnitude.StandardDeviation

=======================================================================================