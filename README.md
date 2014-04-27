## Readme 

### Assumptions

1. We assume that files have been download and extracted to a local directory and this directory has been setting as the working directory.
2. We assume that the meanFreqs are considered as means.
3. We assume that the packages "plyr" and "reshape2" are installed in R.

-------------------------------------------------------------------------------

### Scripts

1. run_analysis.R: This scripts contains all the functions for tinding the data. The             main function is runAll(). In the next lines we describe all the functions implied in this script:
    * **runAll()**: This function has as arguments the path of the train and test set, as well as the other files needed, this arguments take by default a value. If the script is placed inside the folder "UCI HAR Dataset", they doesn't need to be modified. This function has another argument, generateCodeBook, that by default is set to FALSE, if you change its value to TRUE, this function will generate the code book besides of tiding the data and generating the new data set. The other functions in this scripts are called by this for accomplish the task.   
    * **makeRawDataset()**: This is a helper function implemented to create a compact  data set, binding the subject_id and the activities to the training and testing data.
    * **mergeTrainTest()**: This is a helper function implemented to merge the train and test set.
    * **extracMeansAndStd()**: This is a helper function implemented to extract only the mean and the standard deviation of the original dataset.
    * **assignActivityNames()**: This is a helper fucntion implemented to assign a name to the activities instead of the number.
    * **relabelFeatures()**: This is a helper function implemented to rename the features in a more readable way.
    * **makeTidyData()**: This is a helper function implemented to reduce the data set to the average of each variable for each activity.
    * **genCodeBook()**: This is a helper function implemented to generate the codebook of the tidy data. This function is called only if the "generateCodeBook" argument is set to TRUE.
    * **getFeatureDescription()**: This is a helper function called by genCodeBook() implemented to generate the description of each feature.
    
__________________________________________________________________________

### Reproduce the experiment

To reproduce the experiment you have to:
 1. Put the script run_analysis.R in the path "WHATEVER/UCI HAR Dataset/run_analysis.R" and set this as a working directory. Where *WHATEVER* is the path where you have the "UCI HAR Dataset" folder.
 2. Call the source command as *source(WHATEVER/UCI HAR Dataset/runAnalysis.R)* or open the script in R Studio and push the button source in the rigth corner of the editor window.
 3. Execute in the console the following command *runAll()* or if you want as well to generate the code book *runAll(generateCodeBook = TRUE)*.
 
 NOTE: During the execution the console will show several messages for knowing where the process is, if the step of reading train file... takes a while(beetwen 25 and 35 seconds), don't stop the execution, it's because of the read.table command. I haven't used the fread because it threw an error.
 
 
 
