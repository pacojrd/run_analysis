## Code Book

Here describe the varialbes used in this project.

### Overview
In http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

For this proyect, only used next variables:

* train_y : IDs for each of the 6 activities, 1:6, for training dataset. The mapped names are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
* train_subject: IDs of 30 volunteers performed 6 different activities in training dataset.
* train_x: The observations of measurements on 561 features, but for this proyect only used 79 features (tBodyAcc-XYZ, 
tGravityAcc-XYZ, 
tBodyAccJerk-XYZ, 
tBodyGyro-XYZ, 
tBodyGyroJerk-XYZ, 
tBodyAccMag, 
tGravityAccMag, 
tBodyAccJerkMag, 
tBodyGyroMag, 
tBodyGyroJerkMag, 
fBodyAcc-XYZ, 
fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, 
fBodyAccMag, 
fBodyAccJerkMag, 
fBodyGyroMag, 
fBodyGyroJerkMag), mean's and std.

* test_y: IDs for each of the 6 activities, 1:6, for test dataset. The mapped names are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
* test_subject: IDs of 30 volunteers performed 6 different activities in test dataset.
* test_x: The observations of measurements on 561 features, but for this proyect only used 79 features (tBodyAcc-XYZ, 
tGravityAcc-XYZ, 
tBodyAccJerk-XYZ, 
tBodyGyro-XYZ, 
tBodyGyroJerk-XYZ, 
tBodyAccMag, 
tGravityAccMag, 
tBodyAccJerkMag, 
tBodyGyroMag, 
tBodyGyroJerkMag, 
fBodyAcc-XYZ, 
fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, 
fBodyAccMag, 
fBodyAccJerkMag, 
fBodyGyroMag, 
fBodyGyroJerkMag), mean's and std.

### Result
The code based on variables specified files and generates a datset containing the mean and standard deviation of the variables grouped by voluntary and activity. The statistics of the variables are:
* Group.1 (voluntary)
* Group.2 (activity)
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyAccMag-mean()
* tGravityAccMag-mean()
* tBodyAccJerkMag-mean()
* tBodyGyroMag-mean()
* tBodyGyroJerkMag-mean()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-meanFreq()-X
* fBodyAcc-meanFreq()-Y
* fBodyAcc-meanFreq()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-meanFreq()-X
* fBodyAccJerk-meanFreq()-Y
* fBodyAccJerk-meanFreq()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-meanFreq()-X
* fBodyGyro-meanFreq()-Y
* fBodyGyro-meanFreq()-Z
* fBodyAccMag-mean()
* fBodyAccMag-meanFreq()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-meanFreq()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-meanFreq()
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-std()
* tGravityAccMag-std()
* tBodyAccJerkMag-std()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-std()
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-std()

