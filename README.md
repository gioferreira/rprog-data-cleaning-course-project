#Getting and Cleaning Data Course Project
##by Giovani Ferreira

To run the script:
Unzip the provided file 
("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
and rename the resulting folder to "data".

Place the script run_analysis.R in the same folder and run it.

The Script file is heavily commented and explain each step of the process.

It generates a file named "X_final_smrzd.txt" saved on the same location as the script.
It also leaves loaded in R two data.frames and two grouped_df.


Along the process it also verifies if dplyr package is already intalled or not installing
(when necessary) and loading it.

That step, though mandatory, notifies the user if dplyr was installed or not and that it
was loaded.

The final data set is composed of 180 observations of 88 variables.
It was created by appeding two different data sets (X_train and X_test) and creating new
variables (subject_id, activity_id, activity_name) based on additional provided datasets.
The features data set was used to name the variables.

This "complete" data set is left loaded in R as X_total, a data.frame with 10299obs. of 564
variables.

This data set is than stripped of any variable that is not a mean or a std as instructed:
"Extracts only the measurements on the mean and standard deviation for each measurement."

This data set is left loaded in R as X_final, a data.frame with 10299obs. of 88 variables.
X_final is also converted to a tbl_df (and later to a grouped_df) and left loaded as
X_final_tbl.

This final data set is then summarized by activity and subject and each variable is then
summarized as average, resulting in a final summarized data set of 180 observations
(30 Subjects in 6 activities) of 88 variables.

The CODE_BOOK.md file describes each variable and how they were calculated.

Hope all of the commeting helps someone eventually reading this code.