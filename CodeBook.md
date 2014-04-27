## Human Activity Recognition Using Smartphones Tidy Dataset Code Book 

* We have applied the following transformation

                       1. We have bound the data with the output and the subjects id.

                       2. We have merged training and testing data.

                       3. We have extracted only the mean and the standard deviation of each measures
                                (including mean frequency)

                       4. We have relabelled the activities in a more readable way.

                       5. We have reshaped the feature names.

                       6. We have reduced the data set to the average of each variable for each activity



	* Subject
		 - Id number for the subjects.

	* Activity
		 - Output of the observation.It can take 6 values:
			* LAYING 
			* SITTING 
			* STANDING 
			* WALKING 
			* WALKING_DOWNSTAIRS 
			* WALKING_UPSTAIRS

	* timeBodyAccMeanX
		 - Time domain accelerometer body raw signals mean on the X axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccMeanY
		 - Time domain accelerometer body raw signals mean on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccMeanZ
		 - Time domain accelerometer body raw signals mean on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccStdX
		 - Time domain accelerometer body raw signals standard deviation on the X axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccStdY
		 - Time domain accelerometer body raw signals standard deviation on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccStdZ
		 - Time domain accelerometer body raw signals standard deviation on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* timeGravityAccMeanX
		 - Time domain accelerometer gravity raw signals mean on the X axis. 
		This feature can take a value in the range of[-1,1].

	* timeGravityAccMeanY
		 - Time domain accelerometer gravity raw signals mean on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* timeGravityAccMeanZ
		 - Time domain accelerometer gravity raw signals mean on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* timeGravityAccStdX
		 - Time domain accelerometer gravity raw signals standard deviation on the X axis. 
		This feature can take a value in the range of[-1,1].

	* timeGravityAccStdY
		 - Time domain accelerometer gravity raw signals standard deviation on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* timeGravityAccStdZ
		 - Time domain accelerometer gravity raw signals standard deviation on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccJerkMeanX
		 - Time domain accelerometer body angular velocity raw signals mean on the X axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccJerkMeanY
		 - Time domain accelerometer body angular velocity raw signals mean on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccJerkMeanZ
		 - Time domain accelerometer body angular velocity raw signals mean on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccJerkStdX
		 - Time domain accelerometer body angular velocity raw signals standard deviation on the X axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccJerkStdY
		 - Time domain accelerometer body angular velocity raw signals standard deviation on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccJerkStdZ
		 - Time domain accelerometer body angular velocity raw signals standard deviation on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroMeanX
		 - Time domain gyroscope body raw signals mean on the X axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroMeanY
		 - Time domain gyroscope body raw signals mean on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroMeanZ
		 - Time domain gyroscope body raw signals mean on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroStdX
		 - Time domain gyroscope body raw signals standard deviation on the X axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroStdY
		 - Time domain gyroscope body raw signals standard deviation on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroStdZ
		 - Time domain gyroscope body raw signals standard deviation on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroJerkMeanX
		 - Time domain gyroscope body angular velocity raw signals mean on the X axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroJerkMeanY
		 - Time domain gyroscope body angular velocity raw signals mean on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroJerkMeanZ
		 - Time domain gyroscope body angular velocity raw signals mean on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroJerkStdX
		 - Time domain gyroscope body angular velocity raw signals standard deviation on the X axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroJerkStdY
		 - Time domain gyroscope body angular velocity raw signals standard deviation on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroJerkStdZ
		 - Time domain gyroscope body angular velocity raw signals standard deviation on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccMagMean
		 - Time domain accelerometer body magnitude raw signals mean. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccMagStd
		 - Time domain accelerometer body magnitude raw signals standard deviation. 
		This feature can take a value in the range of[-1,1].

	* timeGravityAccMagMean
		 - Time domain accelerometer gravity magnitude raw signals mean. 
		This feature can take a value in the range of[-1,1].

	* timeGravityAccMagStd
		 - Time domain accelerometer gravity magnitude raw signals standard deviation. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccJerkMagMean
		 - Time domain accelerometer body angular velocity raw signals mean. 
		This feature can take a value in the range of[-1,1].

	* timeBodyAccJerkMagStd
		 - Time domain accelerometer body angular velocity raw signals standard deviation. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroMagMean
		 - Time domain gyroscope body magnitude raw signals mean. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroMagStd
		 - Time domain gyroscope body magnitude raw signals standard deviation. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroJerkMagMean
		 - Time domain gyroscope body angular velocity raw signals mean. 
		This feature can take a value in the range of[-1,1].

	* timeBodyGyroJerkMagStd
		 - Time domain gyroscope body angular velocity raw signals standard deviation. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccMeanX
		 - Time domain accelerometer body raw signals mean on the X axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccMeanY
		 - Time domain accelerometer body raw signals mean on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccMeanZ
		 - Time domain accelerometer body raw signals mean on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccStdX
		 - Time domain accelerometer body raw signals standard deviation on the X axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccStdY
		 - Time domain accelerometer body raw signals standard deviation on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccStdZ
		 - Time domain accelerometer body raw signals standard deviation on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccMeanFreqX
		 - Time domain accelerometer body raw signals mean on the X axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccMeanFreqY
		 - Time domain accelerometer body raw signals mean on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccMeanFreqZ
		 - Time domain accelerometer body raw signals mean on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkMeanX
		 - Time domain accelerometer body angular velocity raw signals mean on the X axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkMeanY
		 - Time domain accelerometer body angular velocity raw signals mean on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkMeanZ
		 - Time domain accelerometer body angular velocity raw signals mean on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkStdX
		 - Time domain accelerometer body angular velocity raw signals standard deviation on the X axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkStdY
		 - Time domain accelerometer body angular velocity raw signals standard deviation on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkStdZ
		 - Time domain accelerometer body angular velocity raw signals standard deviation on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkMeanFreqX
		 - Time domain accelerometer body angular velocity raw signals mean on the X axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkMeanFreqY
		 - Time domain accelerometer body angular velocity raw signals mean on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkMeanFreqZ
		 - Time domain accelerometer body angular velocity raw signals mean on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroMeanX
		 - Time domain gyroscope body raw signals mean on the X axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroMeanY
		 - Time domain gyroscope body raw signals mean on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroMeanZ
		 - Time domain gyroscope body raw signals mean on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroStdX
		 - Time domain gyroscope body raw signals standard deviation on the X axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroStdY
		 - Time domain gyroscope body raw signals standard deviation on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroStdZ
		 - Time domain gyroscope body raw signals standard deviation on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroMeanFreqX
		 - Time domain gyroscope body raw signals mean on the X axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroMeanFreqY
		 - Time domain gyroscope body raw signals mean on the Y axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroMeanFreqZ
		 - Time domain gyroscope body raw signals mean on the Z axis. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccMagMean
		 - Time domain accelerometer body magnitude raw signals mean. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccMagStd
		 - Time domain accelerometer body magnitude raw signals standard deviation. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccMagMeanFreq
		 - Time domain accelerometer body magnitude raw signals mean frequency. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkMagMean
		 - Time domain accelerometer body angular velocity raw signals mean. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkMagStd
		 - Time domain accelerometer body angular velocity raw signals standard deviation. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyAccJerkMagMeanFreq
		 - Time domain accelerometer body angular velocity raw signals mean frequency. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroMagMean
		 - Time domain gyroscope body magnitude raw signals mean. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroMagStd
		 - Time domain gyroscope body magnitude raw signals standard deviation. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroMagMeanFreq
		 - Time domain gyroscope body magnitude raw signals mean frequency. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroJerkMagMean
		 - Time domain gyroscope body angular velocity raw signals mean. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroJerkMagStd
		 - Time domain gyroscope body angular velocity raw signals standard deviation. 
		This feature can take a value in the range of[-1,1].

	* fourierBodyGyroJerkMagMeanFreq
		 - Time domain gyroscope body angular velocity raw signals mean frequency. 
		This feature can take a value in the range of[-1,1].

