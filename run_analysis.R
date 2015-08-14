## Read the feature names from file
feature_names <- read.table ("UCI HAR Dataset/features.txt",  as.is=TRUE, 
                             row.names = 1)
feature_names[,1] <- make.names(feature_names[,1])
## extract the indices of the ones we want to keep
mi <- grep ("mean",feature_names[,1],ignore.case=TRUE)
si <- grep ("std",feature_names[,1],ignore.case=TRUE)

desired_features<-feature_names[c(mi,si),1]


## Load training data
## First subjects
subjects_train <- read.table ("UCI HAR Dataset/train/subject_train.txt", 
                              col.names = "Subject")

## Then the measurements, keep only the ones we want.
x_train <- read.table ("UCI HAR Dataset/train/X_train.txt", header=FALSE,
                       col.names = feature_names[,1])
x_train <- x_train[,desired_features]
activity_labels <- read.table ("UCI HAR Dataset/activity_labels.txt", row.names = 1)

## finally the obseved activities - replace the number with the descriptive name
y_train <- read.table ("UCI HAR Dataset/train/Y_train.txt",header=FALSE, 
                       col.names = "Activity")
y_train$Activity<-activity_labels[y_train$Activity,1]
xy_train <- cbind(x_train, subjects_train, y_train)

## Load test data
## First subjects
subjects_test <- read.table ("UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")

## Then the measurements, keep only the ones we want.
x_test <- read.table ("UCI HAR Dataset/test/X_test.txt", header=FALSE,
                       col.names = feature_names[,1])
x_test <- x_test[,desired_features]

## finally the obseved activities - replace the number with the descriptive name
y_test <- read.table ("UCI HAR Dataset/test/Y_test.txt",header=FALSE, 
                       col.names = "Activity")
y_test$Activity<-activity_labels[y_test$Activity,1]
xy_test <- cbind(x_test, subjects_test, y_test)

## Merge train and test into one dataset
merged_data <- rbind (xy_train, xy_test)

## Then extract summaries by Activity and Subject for the other measurements
summary <-aggregate (. ~ Activity+Subject, data=merged_data, mean)

## clean up
rm (merged_data, xy_test, xy_train, x_test, x_train, y_test, y_train, subjects_test, 
    subjects_train)
