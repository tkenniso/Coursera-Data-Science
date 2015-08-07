# Code Book

**Source**: UCI Machine Learning Repository 

A full description of the source data is available at the site where the data was obtained (though much of it is covered here): 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The features selected for the UCI database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The uploaded script (**"run_analysis.R"**) exports a separate "tidy" data set to the working directory with the average value of each mean and standard deviation response variable, by subject and by activity. See below for the  list of the variables included in the final data set, including their mnemonic and variable description.

* **subject**-An identifier of the subject who carried out the experiment. Its range is from 1 to 30 [ID].
* **activity**-The activity performed by the subject during data capture. Each subject performed 6 activities: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS [ID].	
* **tBodyAccMean(XYZ)**-Mean body acceleration in the X, Y, Z direction. 
* **tBodyAccMeanStd(XYZ)**-Mean standard deviation of body acceleration in the X, Y, Z direction.
* **tGravityAccMean(XYZ)**-Mean gravity acceleration in the X, Y, Z direction.
* **tGravityAccMeanStd(XYZ)**-Mean standard deviation of gravitity acceleration in the X, Y, Z direction.
* **tBodyAccJerkMean(XYZ)**-Mean of derived body acceleration jerk signal in the X, Y, Z direction.
* **tBodyAccJerkMeanStd(XYZ)**-Mean standard deviation of derived body acceleration jerk signal in the X, Y, Z direction.
* **tBodyGyroMean(XYZ)**-Mean of the body gyroscope in the X, Y, Z direction.
* **tBodyGyroMeanStd(XYZ)**-Mean standard deviation of the body gyroscope in the X, Y, Z direction.
* **tBodyGyroJerkMean(XYZ)**-Mean of the derived body gyroscope jerk signal in the X, Y, Z direction.
* **tBodyGyroJerkMeanStd(XYZ)**-Mean standard deviation of the derived body gyroscope jerk signal in the X, Y, Z direction.
* **tBodyAccMagMean**-Mean magnitude of body acceleration, calculated using the Euclidean norm.
* **tBodyAccMagMeanStd**-Mean standard deviation of the magnitude of body acceleration, calculated using the Euclidean norm.
* **tGravityAccMagMean**-Mean magnitude of gravity acceleration, calculated using the Euclidean norm.
* **tGravityAccMagMeanStd**-Mean standard deviation of the magnitude of gravity acceleration, calculated using the Euclidean norm.
* **tBodyAccJerkMagMean**-Mean magnitude of derived body acceleration jerk signal, calculated using the Euclidean norm.
* **tBodyAccJerkMagMeanStd**-Mean standard deviation of the magnitude of the derived body acceleration jerk signal, calculated using the Euclidean norm.
* **tBodyGyroMagMean**-Mean magnitude of the body gyroscope, calculated using the Euclidean norm.
* **tBodyGyroMagMeanStd**-Mean standard deviation of the magnitude of the body gyroscope, calculated using the Euclidean norm.
* **tBodyGyroJerkMagMean**-Mean magnitude of the derived body gyroscope jerk signal, calculated using the Euclidean norm.
* **tBodyGyroJerkMagMeanStd**-Mean standard deviation of the magnitude of the derived body gyroscope jerk signal, calculated using the Euclidean norm.
* **fBodyAccMean(XYZ)**-Mean fast fourier transform (FFT) values from  body acceleration in the X, Y, Z direction.
* **fBodyAccMeanStd(XYZ)**-Mean standard deviation of FFT values from body acceleration in the X, Y, Z direction.
* **fBodyAccJerkMean(XYZ)**-Mean FFT values from body acceleration jerk signal in the X, Y, Z direction.
* **fBodyAccJerkMeanStd(XYZ)**-Mean standard deviation of FFT values from body acceleration jerk signal in the X, Y, Z direction.
* **fBodyGyroMean(XYZ)**-Mean FFT values from body gyroscope in the X, Y, Z direction.
* **fBodyGyroMeanStd(XYZ)**-Mean standard deviation of FFT values from body gyroscope in the X, Y, Z direction.
* **fBodyAccMagMean**-Mean FFT values from the magnitude of body acceleration, calculated using the Euclidean norm.
* **fBodyAccMagMeanStd**-Mean standard deviation of FFT values from the magnitude of body acceleration, calculated using the Euclidean norm.
* **fBodyBodyAccJerkMagMean**-Mean FFT values from the magnitude of the body acceleration jerk signal, calculated using the Euclidean norm.
* **fBodyBodyAccJerkMagMeanStd**-Mean standard deviation of FFT values from the magnitude of the body acceleration jerk signal, calculated using the Euclidean norm.
* **fBodyBodyGyroMagMean**-Mean FFT values from the magnitude of the body gyroscope, calculated using the Euclidean norm.
* **fBodyBodyGyroMagMeanStd**-Mean standard deviation of FFT values from the magnitude of the body gyroscope, calculated using the Euclidean norm.
* **fBodyBodyGyroJerkMagMean**-Mean FFT values from the magnitude of the derived body gyroscope jerk signal, calculated using the Euclidean norm.
* **fBodyBodyGyroJerkMagMeanStd**-Mean standard deviation of FFT values from the magnitude of the derived body gyroscope jerk signal, calculated using the Euclidean norm.