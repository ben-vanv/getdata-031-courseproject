# getdata-031-courseproject
Course Project for Getting and Cleansing Data

* [Task and Overview](#overview)
* [Approach](#approach)

<h1 id="overview">Task and Overview</h1>
The UCI Human Activity Recognition Using Smartphones Data Set includes the data ouputs of recordings of 30 subjects performing activities of daily living whilst carrying a waist-mounted smartphone with embedded inertial sensor 
>The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. They performed a protocol of activities composed of six basic activities: three static postures (standing, sitting, lying) and three dynamic activities (walking, walking downstairs and walking upstairs). The experiment also included postural transitions that occurred between the static postures. These are: stand-to-sit, sit-to-stand, sit-to-lie, lie-to-sit, stand-to-lie, and lie-to-stand. All the participants were wearing a smartphone (Samsung Galaxy S II) on the waist during the experiment execution. We captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz using the embedded accelerometer and gyroscope of the device. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was \[sic\] selected for generating the training data and 30% the test data.
Citation: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

The data set includes ths following content:
>- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
>- Triaxial Angular velocity from the gyroscope. 
>- A 561-feature vector with time and frequency domain variables. 
>- Its activity label. 
>- An identifier of the subject who carried out the experiment.

The task for the course project includes the following:
1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The processing logic related to the above is encapsulated in one R script called run_analysis.R

Outputs from the processing logic meet the tidy data requirements:
> Each variable forms a column,
> Each observation forms a row, and;
> Each type of observational unit forms a table.

<h1 id="approach">Approach</h1>
Summary of Processing Approach and Logic: run_analysis.R 
1. If not already downloaded, get UCI HAR and unzip data file using default directory structure
2. Read in activity labels (activity_labels.txt) and features (features.txt), capture the column references for activities that relate to means or standard deviations
3. Cleanse the column title and row data perform the following:
	Features:
		* Remove hyphens and brackets
		* Fix capitalisation and abbreviation in Mean and Standard Deviation
		* Replace f and t abbreviation with "frequency" and "time" respectively 
	Activities:
		* Fix descriptions by putting in title case
		* Remove underscores
4. Read in the activity feature data, state and subject data from the test data files into memory
5. Bind the corresponding training data file content into memory
6. Update column names in the dataset using the activity labels produced in step 2
7. Bind subject, activity and state column data into the same data sets
8. Update column references to activity IDs with the corresponding human readable text
9. Create a summary output using average values for all activity measure columns
10. Write out summary data to the text file: TidyData.txt
