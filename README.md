## GettingAndCleaningData: Human Activity Recognition Using Smartphones Data Set 
======================
Source:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit�  degli Studi di Genova, Genoa I-16145, Italy.
activityrecognition '@' smartlab.ws
www.smartlab.ws

Official website of the experiment:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Download link to the dataset:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Task Description

 The attached R script called run_analysis.R does the following tasks:

- Sets the environment for R by loading the necessary packages
- Loads the tables from test and training data sets
- Extracts only the measurements on the mean and standard deviation for each measurement using grepl() function
- Uses descriptive activity names to name the activities in the test and training data sets
- Appropriately labels the data set with descriptive variable names
- Merges the training and the test sets to create one data set namely tidy_data using cbind() and rbind() function
- Reshapes tidy_data using melt() and dcast() functions to create the required data set named tidy_data_mean
- Writes the data set file to the working directory (TidyDataMean).

## Further Requirements

To run the R script, it is required that the data.table and reshape2 packages were installed in your computer. 

## References
UIC Machine Learning Repository. Human Activity Recognition Using Smartphones Data Set . Retrieved from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones on June 10, 2014

Peng, R. (2014). Getting and Cleaning Data Course Project. Retrieved from https://class.coursera.org/getdata-004/human_grading/view/courses/972137/assessments/3/submissions on June 10, 2014.
