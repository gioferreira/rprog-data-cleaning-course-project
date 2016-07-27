###load all needed variables with their names same as filenames for easiness of reading since the files are really well organized
#./data
activity_labels <- read.table("./data/activity_labels.txt")
features <- read.table("./data/features.txt")
#./data/test
subject_test <- read.table("./data/test/subject_test.txt")
X_test <- read.table("./data/test/X_test.txt")
y_test <- read.table("./data/test/y_test.txt")

#./data/train
subject_train <- read.table("./data/train/subject_train.txt")
X_train <- read.table("./data/train/X_train.txt")
y_train <- read.table("./data/train/y_train.txt")

##name columns for X_test & X_train
colnames(X_test) <- features[[2]]
colnames(X_train) <- features[[2]]

#remove features data.frame since it's already been used
rm(features)

#add subject_id column to X_test & X_train from subject_test & subject_train
X_test["subject_id"] <- subject_test
X_train["subject_id"] <- subject_train

#remove subject_test & _train data.frames since they've already been used
rm(subject_test)
rm(subject_train)

#add activity_name column to X_text & X_train from activity_labels & y_test & y_train
X_test["activity_id"] <- y_test
X_train["activity_id"] <- y_train
colnames(activity_labels) <- c("activity_id", "activity_name")
X_test <- merge(X_test,activity_labels,by.x="activity_id",by.y="activity_id",all=TRUE)
X_train <- merge(X_train,activity_labels,by.x="activity_id",by.y="activity_id",all=TRUE)

#remove y_test, y_train & activity_labels since they've already been used
rm(y_test)
rm(y_train)
rm(activity_labels)

#join X_train and X_test into one larger data.frame
X_total <- rbind(X_train, X_test)

#remove X_train & X_test
rm(X_train)
rm(X_test)

#get names of X_total
names <- names(X_total)

#get variable names that are either a Mean or a Std Deviation + Activity Name + Subject Id following
#the instruction "extracts only the measurements on the mean and standard deviation for each measurement".
valid_columns <- grepl("(.*[Mm]ean.*)|(.*[Ss]td.*)|(.*activity_name.*)|(.*subject_id.*)", names)

#remove names
rm(names)

#create a X_Final with the final data.frame crossing X_total with valid_columns
X_final <- X_total[, valid_columns]

#remove valid_columns
rm(valid_columns)

#set the column order for X_final so that subject_id and activity_name is in the first two columns
X_final <- X_final[,c(87,88,1:86)]

#remove parentheses characters from the variable names and replace - with _
names <- names(X_final)
names <- gsub("\\(", "",names)
names <- gsub("\\)", "",names)
names <- gsub("\\-", "_",names)
names <- gsub("\\,", "_",names)
colnames(X_final) <- names
rm(names)

#install dplyr if not installed and then load it
if ("dplyr" %in% rownames(installed.packages())) {
        print("dplyr already installed")
        print("loading dplyr")
        library(dplyr)
} else {
        print("installing and loading dplyr")
        install.packages("dplyr");library(dplyr)
}

#convert X_final to tbl and group it by activity_name and subject_id
X_final_tbl <- tbl_df(X_final)
X_final_tbl <- group_by(X_final_tbl,activity_name,subject_id)

#Summarize each of the variables by activity_name & by subject_id to a new df
X_final_smrzd <- summarize_each(X_final_tbl,funs(mean))

#write it out
write.table(X_final_smrzd, file="./X_final_smrzd.txt", row.names = FALSE)