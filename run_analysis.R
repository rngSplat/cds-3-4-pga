library(tidyverse)

##Load common files to define features and activity labels
features <- read.delim("UCI HAR Dataset/features.txt", ##Read the features file and store as `features` 
                       header = FALSE, ##File has no header
                       sep = " ", ##separated by spaces
                       col.names = c("featureID","feature"), ##Set column names
                       stringsAsFactors=FALSE)

##Create reference to maps activity identifiers to activity labels
activityLabels <- read.delim("UCI HAR Dataset/activity_labels.txt", ##Read the Activity Labels file and store as `activityLabels` 
                             header = FALSE, ##File has no header
                             sep = " ", ##separated by spaces
                             col.names = c("activityID","activity")) ##Set column names



sets <- c("test","train")
files <- list()

for (set in sets) {
    files$subject[set] <- paste0("UCI HAR Dataset/",set,"/subject_",set,".txt")
    files$X[set] <- paste0("UCI HAR Dataset/",set,"/X_",set,".txt")
    files$y[set] <- paste0("UCI HAR Dataset/",set,"/y_",set,".txt")
    }


for (set in sets) {
    ##Load column of subject IDs
    assign(paste0(set,"Subjects"), 
           read.delim(files[["subject"]][set],
                      header = FALSE,
                      col.names = "subjectID"))
    ##Load activity IDs
    assign(paste0(set,"ActivityIDs"),
           read.delim(files[["y"]][set],
                      header = FALSE, 
                      col.names = "activityID"))
    ##Create vector of activity labels by merging activityLabels with the activity label reference
    assign(paste0(set,"Activity"),
           merge(get(eval(paste0(set,"ActivityIDs"))), activityLabels)[,"activity"])
    
    assign(paste0(set,"DF"), 
           cbind(subject = get(eval(paste0(set,"Subjects"))), 
                 activity = get(eval(paste0(set,"Activity")))))
    
    ##Load datasets using fixed width variables, alternating 1 and 15 length columns.
    ##Drop the empty odd-index columns
    assign(paste0(set,"Results"),
           read.fwf(files[["X"]][set], rep(c(1,15),561))[,seq(2,1122,2)])
    
}

##Apply friendly names to resulting dataframe from features reference
names(testResults) <- features[,2]
names(trainResults) <- features[,2]

testResults <- testResults[,grep("(mean|std)\\(\\)",names(testResults))]
trainResults <- trainResults[,grep("(mean|std)\\(\\)",names(trainResults))]
testDF <- cbind(testDF, testResults)
trainDF <- cbind(trainDF, trainResults)
tidyDF <- rbind(testDF, trainDF)
names(tidyDF) <- names(tidyDF) %>% gsub(pattern = "[-()-]",replacement =  "") %>% tolower()
tidyDF <- as_tibble(tidyDF)
by_subject_and_activity <- tidyDF %>% group_by(subjectid, activity) %>% dplyr::summarise_each(funs(mean))
rm(activityLabels,files,features,testDF,trainDF,testActivity,trainActivity,testActivityIDs,trainActivityIDs,testResults,trainResults,testSubjects,trainSubjects,set,sets)

write.table(tidyDF, "tidyDF.txt", sep="\t", row.name=FALSE)
write.table(by_subject_and_activity, "by_subject_and_activity.txt", sep="\t", row.name=FALSE)