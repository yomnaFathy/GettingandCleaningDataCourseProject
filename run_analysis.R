## download data 
filename <- "getdata_dataset.zip"
if(!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, filename)
}
if(!file.exists("UCI HAR Dataset")){
    unzip(filename)
}

## load and subset wanted features 
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
features <- features[, 2]
wantedfeatures <- grep("*mean\\()*|*std\\()*", features)
featurenames <- features[wantedfeatures]

## make varibale names descriptive
featurenames <- gsub("^t", "time", featurenames)
featurenames <- gsub("^f", "frequency", featurenames)
featurenames <- gsub("Acc", "Accelerometer", featurenames)
featurenames <- gsub("Mag", "Magnitude", featurenames)
featurenames <- gsub("Gyro", "Gyroscope", featurenames)
featurenames <- gsub("BodyBody", "Body", featurenames)
featurenames <- gsub("[()]", "", featurenames)

## load train data
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
train <- cbind(X_train[, wantedfeatures], y_train)
names(train) <- c(featurenames, "activity")

## load test data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
test <- cbind(X_test[, wantedfeatures], y_test)
names(test) <- c(featurenames, "activity")

## merge train and test data
HARData <- rbind(train, test)

## label activiy
activity <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
HARData$activity <- factor(HARData$activity, levels = activity[,1],
                                 labels = activity[,2])

## load subject and create a second independent tidy data set
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(subject_train, subject_test)
HARData2 <- cbind(as.list(subject), HARData)
HARData2 <- rename(HARData2, subjcet = V1)

write.table(HARData2, "tidydata.txt", row.names = FALSE)
