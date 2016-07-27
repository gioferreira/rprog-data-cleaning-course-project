#Getting and Cleaning Data Course Project
##by Giovani Ferreira

The Code Book

As I metioned on the README.md, the Script file is heavily commented and explain each
step of the process.

The script generates a file named "X_final_smrzd.txt" that contains 180 observatios of
88 variables.

Those variables were named using the "features.txt" file.

Each of those variables are described below.

"1" "activity_name"
        The file "activity_labels.txt" was used creaet this variable combining the y_test
        and y_train with the x_test and x_train data sets.
        It's a factor variable that contains the name of the activity the user was performing
        when the data was collected

"2" "subject_id"
        subject_test and subject_train files were used to add this ID variable to the dataset
        It's an ID variable ranging from 1 to 30 that identifies that subjects.

"3" "tBodyAcc_mean_X"
        This variable is the average of the original tBodyAcc-mean()-X feature when groupped by
        Activity and Subject.
        It is the average of all the tBodyAcc-mean()-X values of a particular subject during a particular
        acitivity.
        
Each of the following variables were calculated using the same approach, using summarize_each.
        
"4" "tBodyAcc_mean_Y"
"5" "tBodyAcc_mean_Z"
"6" "tBodyAcc_std_X"
"7" "tBodyAcc_std_Y"
"8" "tBodyAcc_std_Z"
"9" "tGravityAcc_mean_X"
"10" "tGravityAcc_mean_Y"
"11" "tGravityAcc_mean_Z"
"12" "tGravityAcc_std_X"
"13" "tGravityAcc_std_Y"
"14" "tGravityAcc_std_Z"
"15" "tBodyAccJerk_mean_X"
"16" "tBodyAccJerk_mean_Y"
"17" "tBodyAccJerk_mean_Z"
"18" "tBodyAccJerk_std_X"
"19" "tBodyAccJerk_std_Y"
"20" "tBodyAccJerk_std_Z"
"21" "tBodyGyro_mean_X"
"22" "tBodyGyro_mean_Y"
"23" "tBodyGyro_mean_Z"
"24" "tBodyGyro_std_X"
"25" "tBodyGyro_std_Y"
"26" "tBodyGyro_std_Z"
"27" "tBodyGyroJerk_mean_X"
"28" "tBodyGyroJerk_mean_Y"
"29" "tBodyGyroJerk_mean_Z"
"30" "tBodyGyroJerk_std_X"
"31" "tBodyGyroJerk_std_Y"
"32" "tBodyGyroJerk_std_Z"
"33" "tBodyAccMag_mean"
"34" "tBodyAccMag_std"
"35" "tGravityAccMag_mean"
"36" "tGravityAccMag_std"
"37" "tBodyAccJerkMag_mean"
"38" "tBodyAccJerkMag_std"
"39" "tBodyGyroMag_mean"
"40" "tBodyGyroMag_std"
"41" "tBodyGyroJerkMag_mean"
"42" "tBodyGyroJerkMag_std"
"43" "fBodyAcc_mean_X"
"44" "fBodyAcc_mean_Y"
"45" "fBodyAcc_mean_Z"
"46" "fBodyAcc_std_X"
"47" "fBodyAcc_std_Y"
"48" "fBodyAcc_std_Z"
"49" "fBodyAcc_meanFreq_X"
"50" "fBodyAcc_meanFreq_Y"
"51" "fBodyAcc_meanFreq_Z"
"52" "fBodyAccJerk_mean_X"
"53" "fBodyAccJerk_mean_Y"
"54" "fBodyAccJerk_mean_Z"
"55" "fBodyAccJerk_std_X"
"56" "fBodyAccJerk_std_Y"
"57" "fBodyAccJerk_std_Z"
"58" "fBodyAccJerk_meanFreq_X"
"59" "fBodyAccJerk_meanFreq_Y"
"60" "fBodyAccJerk_meanFreq_Z"
"61" "fBodyGyro_mean_X"
"62" "fBodyGyro_mean_Y"
"63" "fBodyGyro_mean_Z"
"64" "fBodyGyro_std_X"
"65" "fBodyGyro_std_Y"
"66" "fBodyGyro_std_Z"
"67" "fBodyGyro_meanFreq_X"
"68" "fBodyGyro_meanFreq_Y"
"69" "fBodyGyro_meanFreq_Z"
"70" "fBodyAccMag_mean"
"71" "fBodyAccMag_std"
"72" "fBodyAccMag_meanFreq"
"73" "fBodyBodyAccJerkMag_mean"
"74" "fBodyBodyAccJerkMag_std"
"75" "fBodyBodyAccJerkMag_meanFreq"
"76" "fBodyBodyGyroMag_mean"
"77" "fBodyBodyGyroMag_std"
"78" "fBodyBodyGyroMag_meanFreq"
"79" "fBodyBodyGyroJerkMag_mean"
"80" "fBodyBodyGyroJerkMag_std"
"81" "fBodyBodyGyroJerkMag_meanFreq"
"82" "angletBodyAccMean_gravity"
"83" "angletBodyAccJerkMean_gravityMean"
"84" "angletBodyGyroMean_gravityMean"
"85" "angletBodyGyroJerkMean_gravityMean"
"86" "angleX_gravityMean"
"87" "angleY_gravityMean"
"88" "angleZ_gravityMean"
