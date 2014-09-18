#set working directory
setwd("/users/juancbujeda/Dropbox/Education/coursera - getting & cleaning data/course project")

#get the activity labels
activity_labels <- read.csv("./activity_labels.txt")    #6 obs; 1 variable

#get the training data
subject_train <- read.csv("./train/subject_train.txt")  #subject doing activity; 7351 obs; 1 var; 1-30
x_train_raw <- read.csv("./train/X_train.txt")          #train dataset; 7351 obs; 
y_train_raw <- read.csv("./train/Y_train.txt")          #train labels; 7351 obs; 1 var; 1-6 

#get the test data
subject_test <- read.csv("./test/subject_test.txt")     #subj doing activity; 7351 obs; 1 var; 1-30
x_test_raw <- read.csv("./test/X_test.txt")             #train dataset; 7351 obs; 
y_test_raw <- read.csv("./test/Y_test.txt")             #train labels; 7351 obs; 1 var; 1-6 

#get the variable names
features <- read.table("./features.txt")                #variable names; 561 total
varnames <- as.character(features[1:nrow(features),2])

#tidy up the training and test datasets; assign variable names
x_train_df <- getdf(x_train_raw,width=15,rows=7351,columns=561)
x_test_df <- getdf(x_test_raw,width=15,rows=2946,columns=561)
names(x_train_df) <- varnames
names(x_test_df) <- varnames

#give meaningful names to the activity labels
names(y_train_raw) <- "Activity Label"
names(y_test_raw) <- "Activity Label"
y_train_df <- y_train_raw                                     #activity labels; 7351 obs
y_train_df <- subnames(y_train_df) 
y_test_df <- y_test_raw
y_test_df <- subnames(y_test_df)

#rowbind the subject_test and subject_train files
names(subject_train) <- "Subject Code"
names(subject_test) <- "Subject Code"
subject_df <- rbind(subject_train,subject_test)

#merge the x_test and x_train datasets and the y_train and y_test datasets and then the x and y
dataset_df <- rbind(x_train_df,x_test_df)
activity_df <- rbind(y_train_df,y_test_df)

#extract the mean and stdev of each variable in the dataset
dataset_meanstd_df <- dataset_df[,extract_vector(dataset_df)]

#merge the subject, x and y datasets
table <- cbind(subject_df,activity_df,dataset_meanstd_df)

#sort the table by subject code and set the rownames to the row #
table <- table[order(table[,1],table[,2]),]
row.names(table) <- seq(nrow(table))

#give the variables meaningful names
names(table) <- goodnames(table)

#consolidate data 
finaltable <- varmeans(table)

#write to textfile
write.table(finaltable,"./finaltable.txt",row.name=FALSE)

##FUNCTIONS
#this function converts the factors in the 1st col of the df to numeric; returns a dataframe
getdf <- function(df,width,rows,columns) {
        nums_matrix <- matrix(,rows,columns)
        for (i in 1:rows) {
                numsvector <- as.character()
                #save the df row as a character string 
                char_string <- as.character(df[i,1])
                #convert the character string to a vector of characters
                char_vector <- getchar(char_string , width)
                #convert the seq of char to a seq of numbers
                nums_vector <- as.numeric(char_vector)
                nums_matrix[i,] <- nums_vector
        }
        as.data.frame(nums_matrix)
}

#extract the character string as a sequence of characters
getchar <- function(char_string, width) {
        char_vector <- as.character()
        j <- 1
        k <- 1
        while (j < nchar(char_string)) {
                char_vector[k] <- substr(char_string , j , j + width)
                j <- j + width + 1
                k <- k + 1
        }
        char_vector
}

#replace the activity labels with meaningful descriptions
subnames <- function(df){
        for (i in 1:nrow(df)) {
                if (df[i,1]==1) {
                        df[i,1] <- "Walking"
                } else if (df[i,1]==2) {
                        df[i,1] <- "Walking Upstairs"
                } else if (df[i,1]==3) {
                        df[i,1] <- "Walking Downstairs"
                } else if (df[i,1]==4) {
                        df[i,1] <- "Sitting"
                } else if (df[i,1]==5) {
                        df[i,1] <- "Standing"
                } else if (df[i,1]==6) {
                        df[i,1] <- "Laying"
                }
        }
        df
}

#returns a logical vector with the positions of the cols that give means or stds
extract_vector <- function(df){
        extract <- as.numeric()
        k <- 1
        for (i in 1:ncol(df)){
                if (grepl("mean",names(df[i])) | grepl("std",names(df[i]))) {
                        extract[k] <- i   
                        k <- k + 1
                } 
        }
        extract 
}

#changes the names of the dataframe to something meaningful
goodnames <- function(df) {
        finalname <- as.character()
        actualname <- as.character()
        for (i in 1:ncol(df)) {
               actualname <- names(df[i])
               actualname <- sub("tBodyAccJerkMag","Body Linear Jerk Magnitude",actualname)
               actualname <- sub("tBodyAccJerk","Body Linear Acc Jerk",actualname)
               actualname <- sub("tBodyAccMag","Body Linear Acc Magnitude",actualname)
               actualname <- sub("tBodyAcc","Body Linear Acc",actualname)
               
               actualname <- sub("tBodyGyroJerkMag","Body Angular Jerk Magnitude",actualname)
               actualname <- sub("tBodyGyroJerk","Body Angular Vel Jerk",actualname)
               actualname <- sub("tBodyGyroMag","Body Angul Vel Magnitude",actualname)
               actualname <- sub("tBodyGyro","Body Angular Vel",actualname)
               
               actualname <- sub("tGravityAccMag","Gravity Acc Magnitude",actualname)        
               actualname <- sub("tGravityAcc","Gravity Acc",actualname)
               
               actualname <- sub("fBodyAccJerkMag","Body Linear Jerk (FFT)",actualname)       
               actualname <- sub("fBodyAccJerk","Body Linear Jerk (FFT)",actualname)
               actualname <- sub("fBodyAcc","Body Linear Acc (FFT)",actualname)

               actualname <- sub("fBodyBodyGyroJerkMag","Body Angular Jerk Magnitude (FFT)",actualname) 
               actualname <- sub("fBodyBodyAccJerkMag","Body Linear Jerk (FFT)",actualname)
               actualname <- sub("fBodyBodyGyroMag","Body Angular Vel Magnitude (FFT)",actualname)
               actualname <- sub("fBodyGyroJerkMag","Body Angular Jerk Magnitude (FFT)",actualname)
               actualname <- sub("fBodyGyroMag","Body Angular Vel Magnitude (FFT)",actualname)
               actualname <- sub("fBodyGyro","Body Angular Vel (FFT)",actualname)
               actualname <- sub("fBodyAccMag","Body Linear Acc Magnitude (FFT)",actualname)

               finalname[i] <- actualname
        }
        finalname
}

#obtains the mean of each variable by activity and subject
varmeans <- function(df) {
        #trow: table row counter
        #var: variable column in dataset
        #subj: subject dcast dataframe
        #act: activity in dataset
        atable <- matrix(,nrow=180,ncol=81)
        trow <- 0
        #loops through variables in the dataset
        for (var in 3:81) {             
                #restart the table rows
                trow <- 1              
                #calculates dcast for variable = var
                dcast_df <- dcast(df,df[,1]~df[,2],mean,value.var=names(df[var]))
                #loops through subjects in the dcast
                for (subj in 1:30) {
                        #loops through activities in the dcast
                        for (act in 2:7) {
                                atable[trow,1] <- subj 
                                atable[trow,2] <- names(dcast_df[act])
                                atable[trow,var] <- dcast_df[subj,act]
                                #next row in the table
                                trow <- trow + 1
                        }                                
                }
        }
        #convert to dataframe, add names, add the first two columns
        atable <- data.frame(atable)
        names(atable) <- names(df)
        atable
}

