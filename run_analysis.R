#Author: Doryan Gowty
#Getting and Cleaning Data Assignment
#Date: 31/01/2015 
#Comments: Please peruse "README.md" before execxuting this script


library(dplyr)



###################set working directory#########################
#setwd("C:/TEMP/Personal/Coursera/UCI HAR Dataset/test") 

###########################load data############################
x_test <- read.table("X_test.txt", header = FALSE, sep = "")
x_train <- read.table("X_train.txt", header = FALSE, sep = "")
y_test <- read.table("y_test.txt", header = FALSE, sep = "")
y_train <- read.table("y_train.txt", header = FALSE, sep = "")
subject_test <- read.table("subject_test.txt", header = FALSE, sep = "")
subject_train <- read.table("subject_train.txt", header = FALSE, sep = "")
activity_label <- read.table("activity_labels.txt", header = FALSE, sep = "")

##########################begin script#########################
#
#Combine activity and subject information to data sets
#
comb_test <- cbind(subject_test, y_test, x_test)
comb_train <- cbind(subject_train, y_train, x_train)

#concatenated data
merged_DF <- rbind(comb_test, comb_train)


#create vector of feature names from features.txt file
nameDF <- read.table("features.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
#need to add labels for the first two columns
DFNames <- c("subjects", "activities" , nameDF[['V2']])
split_names <- strsplit(DFNames,"-")

#get the measurement type from feature set
get_second_element <- function(x){x[2]}
second_element <- sapply(split_names, get_second_element)




#create data frame of all the feature names, and the measurement types
feature_set <- data.frame(cbind(DFNames, second_element))
#keep first two columns when getting measurement types
restricted_fs <- rbind(feature_set[1:2,],
                        feature_set[
                                    (
                                      second_element == "std()" | 
                                      second_element == "mean()"
                                    ) & 
                                    !is.na(second_element)  
                                      
                                   ,]
                      ) 

#create logical vector of features to keep
col_keep <- (
              (
                feature_set$second_element == "std()" | 
                feature_set$second_element == "mean()"
              ) & 
                !is.na(feature_set$second_element)  
            )
#set first two elements to 'TRUE'
col_keep[1:2] <- TRUE       

#rename features
restricted_fs$DFNames <- gsub("^t", "time\\.", restricted_fs$DFNames, perl = TRUE)
restricted_fs$DFNames <- gsub("^f", "frequency\\.", restricted_fs$DFNames, perl = TRUE)
restricted_fs$DFNames <- gsub("Acc", "Accelerometer", restricted_fs$DFNames, perl = TRUE)
restricted_fs$DFNames <- gsub("Gyro", "Gyroscope", restricted_fs$DFNames, perl = TRUE)
restricted_fs$DFNames <- gsub("Mag", "Magnitude", restricted_fs$DFNames, perl = TRUE)
restricted_fs$DFNames <- gsub("jerk", "Jerk", restricted_fs$DFNames, perl = TRUE)
restricted_fs$DFNames <- gsub("-\\w+\\(\\)-", "\\.", restricted_fs$DFNames, perl = TRUE)
restricted_fs$DFNames <- gsub("-\\w+\\(\\)$", "", restricted_fs$DFNames, perl = TRUE)
restricted_fs$second_element <- sub("mean\\(\\)","Mean", restricted_fs$second_element, perl = TRUE)
restricted_fs$second_element <- gsub("std\\(\\)","StandardDeviation",
                                     restricted_fs$second_element)


#strip merged_DF down to the wanted features
merged_DF <- merged_DF[, col_keep]

#add names to dataset
colnames(merged_DF) <- sub(".NA", "" , 
                          paste(restricted_fs$DFNames,
                                restricted_fs$second_element, 
                                sep="."
                                )
                          )
                      
#apply activity names
merged_DF$activities <- sapply(merged_DF$activities, factor,  
                                levels = activity_label[[1]] ,
                                labels = as.character(activity_label[[2]])
                              ) 

#summarise data down to tidy dataset
##first group variables required for summary
grpd_df <- merged_DF %>% group_by(subjects, activities)
##next calculate mean on grouped variables
summary_df <- grpd_df %>% summarise_each(funs(mean))

#write.table
write.table(summary_df, file = "summary_out.txt",  row.names = FALSE)
