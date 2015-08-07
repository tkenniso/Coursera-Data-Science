### Source/Study Design:
The following script uses data on Human Activity Recognition using Smartphones from the UCI Machine Learning Repository. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The UCI Center for Machine Learning and Intelligent Systems has a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The dataset is partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.  

Each record in the dataset provides the following:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Script
The uploaded script (**"run_analysis.R"**) reads in the UCI test and training datasets, and appends them together. The script then extracts ONLY the measurements on the mean and standard deviation for each measurement, and replaces the numeric activity labels with descriptive activity names. The script then renames each variable, removing special characters ("./()") and punctuating each variable name so that it is humanly readable, in accordance with Hadley Wickham’s tidy data principles. Finally, the script creates and then exports a separate "tidy" data set to the working directory with the average value of each mean and standard deviation response variable, by subject and by activity.

### Instruction List
1. Click to download the Human Activity Recognition database: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. Unzip and copy the extracted file folder ("UCI HAR Dataset") to your working directory.
3. Insert your working directory (in quotes) as the only argument to the uploaded script (**"run_analysis.R"**) and run.