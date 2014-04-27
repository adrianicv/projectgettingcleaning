
runAll <- function(trainX = "train/X_train.txt", trainY = "train/y_train.txt"
                   , testX = "test/X_test.txt", testY = "test/y_test.txt", 
                   subjectTrain = "train/subject_train.txt", 
                   subjectTest = "test/subject_test.txt",
                   labels = "activity_labels.txt", features = "features.txt",
                   generateCodeBook = FALSE){
    
    library(plyr)
    library(reshape2)
    
    ## unify all corresponding train and test datasets
    rawX <- makeRawDataset(trainX, trainY, subjectTrain)
    rawY <- makeRawDataset(testX, testY, subjectTest)
    
    ## merge the two datasets
    rawXY <- mergeTrainTest(rawX, rawY, features)
    
    ## extract mean and std of measurements
    extractedXY <- extracMeansAndStd(rawXY)
    
    ## assign names to the activity codes
    extractedXY <- assignActivityNames(extractedXY, labels)
    
    ## relabel the features in an appropiate way
    extractedXY <- relabelFeatures(extractedXY)
    
    ## store the intermediate data set in ./preTidyData.txt
    write.table(extractedXY, "./preTidyData.txt", quote=FALSE, row.names = FALSE)
    
    ## create the tidy data set according to the specifications
    tidyData <- makeTidyData(extractedXY)
    
    ## store the tidy data set in ./tidyData.txt
    write.table(tidyData, "./tidyData.txt", quote=FALSE, row.names = FALSE)
    
    ## generate the code book if the argument is true
    if(generateCodeBook){
        genCodeBook(tidyData)
        message("Code book stored in CodeBook.md")
    }
    
    message("End of analysis: Tidy data set stored in tidyData.txt")
}

makeRawDataset <- function(measuresFile, outputFile, subjectIdFile){
    
    if(length(grep("*train*",measuresFile))!=0)
        message("Reading train file...")
    else if(length(grep("*test*",measuresFile))!=0)
        message("Reading test file...")
    else
        message("Reading unknown file...")
    
    ## read the files and store them in dataframes
    measures <- read.table(measuresFile, sep="", header = FALSE, stringsAsFactors= FALSE)
    output <- read.table(outputFile, sep="", header = FALSE,stringsAsFactors= FALSE)
    subjectId <- read.table(subjectIdFile, sep="", header = FALSE, stringsAsFactors= FALSE)
    
    message("Creating raw dataset...")
    ## unify all in a dataset
    rawData <- cbind(subjectId, output, measures)
    
    rawData
}

mergeTrainTest <- function(train, test, featuresFile){
    
    features <- read.table(featuresFile, sep="", header = FALSE, stringsAsFactors= FALSE)
    
    message("Merging test and train...")
    
    ## merge the train and the test data frame
    rawTrainTest <- rbind(train, test)
    
    ## order by subject and activity
    rawTrainTest <- rawTrainTest[order(rawTrainTest[, 1],rawTrainTest[, 2]), ]
    
    ## set the features names
    names(rawTrainTest) <- c("Subject", "Activity", features[ , 2])
    
    
    rawTrainTest
    
}

extracMeansAndStd <- function(rawData){
    message("Extracting mean and standard deviation...")
    
    ## extract all columns containing mean and std
    extracData <- rawData[ , c(1,2,grep("*mean*|*std*", x= names(rawData))) ]
    
    extracData
}

assignActivityNames <- function(data, activityNamesFile){
    
    message("Assigning names to the activity codes...")    
    
    ## read the activity names file
    activityNames <- read.table(activityNamesFile, sep="", header = FALSE, stringsAsFactors= FALSE)    
    names(activityNames) <- c("Activity", "ActivityNames")
    
    ## select only the activity column and store it in temp data frame
    tempData <- data.frame(data[ ,2 ])
    names(tempData)[1] <- "Activity"
       
    ## join preserving original data order
    tempNames <- join(tempData, activityNames, by = "Activity")
    
    ## rename activities column
    data$Activity <- tempNames[,2]
    
    data
    
}

relabelFeatures <- function(data){
    
    message("Relabelling feature names...")
    
    ## make feature names more readable
    names(data) <- gsub("\\(\\)", "", names(data))
    names(data) <- gsub("-", "", names(data))
    names(data) <- gsub("^t", "time", names(data))
    names(data) <- gsub("^f", "fourier", names(data))
    names(data) <- gsub("BodyBody", "Body", names(data))
    names(data) <- gsub("std", "Std", names(data))
    names(data) <- gsub("mean", "Mean", names(data))
    
    data
}


makeTidyData <- function(data){
    
    message("Tiding the data...")

    ## Reduce the data set to the average of each variable for each activity
    ## and each subject
    melted <- melt(data,(id.vars=c("Subject","Activity")))
    tidied <- dcast(melted, Subject + Activity ~ variable, mean)
    
    tidied
}

genCodeBook <- function(data){
    message("Generating code book...")
    
    
    datanames <- names(data)
    
    ## get features descriptinos
    descriptions <- sapply(datanames, getFeatureDescription, data)
    
    ## make a markdown list whit the name and description of each feature
    outputlines <- paste("\t* ",datanames, descriptions , sep="")
    
    title <- "## Human Activity Recognition Using Smartphones Tidy Dataset Code Book \n\n"
    transformations <-"* We have applied the following transformation\n
                       1. We have bound the data with the output and the subjects id.\n
                       2. We have merged training and testing data.\n
                       3. We have extracted only the mean and the standard deviation of each measures
                                (including mean frequency)\n
                       4. We have relabelled the activities in a more readable way.\n
                       5. We have reshaped the feature names.\n
                       6. We have reduced the data set to the average of each variable for each activity\n\n\n"
    
    header <- paste(title, transformations, sep="")
    
    write.table(header, file="CodeBook.md", quote = FALSE, col.names=FALSE, row.names=FALSE)
    write.table(outputlines,file="CodeBook.md", quote = FALSE, col.names=FALSE, row.names=FALSE, append = TRUE)
    
    
}

getFeatureDescription <- function(dataName, data){
    
    desc <- "\n\t\t - "
    
    if(length(grep("Subject", dataName))!=0)
        desc <- paste(desc,"Id number for the subjects." , sep="")
    else if(length(grep("Activity", dataName))!=0){
        values <- unique(data$Activity)
        desc <- paste(desc,"Output of the observation.It can take 6 values:" , sep="")
        temp <- paste("\n\t\t\t* ", values, sep="")
        
        temp <- paste(temp, collapse = " " )
        desc <- paste(desc, temp, sep="")
        
    }
    else{    
        desc <- paste(desc, "Time domain ", sep="")
        if(length(grep("*Acc*", dataName))!=0)
            desc <- paste(desc, "accelerometer ", sep="")
        else if(length(grep("*Gyro*", dataName))!=0)
            desc <- paste(desc, "gyroscope ", sep="")
        
        if(length(grep("*Body*", dataName))!=0)
            desc <- paste(desc, "body ", sep="")
        else if(length(grep("*Gravity*", dataName))!=0)
            desc <- paste(desc, "gravity ", sep="")
        
        if(length(grep("*Jerk*", dataName))!=0)
            desc <- paste(desc, "angular velocity ", sep="")
        else if(length(grep("*Mag*", dataName))!=0)
            desc <- paste(desc, "magnitude ", sep="")
        
        desc <- paste(desc, "raw signals ", sep="")

        if(length(grep("*Mean(*)?", dataName))!=0)
            desc <- paste(desc, "mean", sep="")
        else if(length(grep("*Std(*)?", dataName))!=0)
            desc <- paste(desc, "standard deviation", sep="")
        
        if(length(grep("*Freq$", dataName))!=0)
            desc <- paste(desc, "frequency", sep=" ")
        
        if(length(grep("X$", dataName))!=0)
            desc <- paste(desc, "on the X axis", sep=" ")
        else if(length(grep("Y$", dataName))!=0)
            desc <- paste(desc, "on the Y axis", sep=" ")
        else if(length(grep("*Z$", dataName))!=0)
            desc <- paste(desc, "on the Z axis", sep=" ")
        
        desc <- paste(desc, ". \n\t\tThis feature can take a value in the range of[-1,1].", sep="")
        
    }

    desc <- paste(desc, "\n", sep="")
    desc
    
}
