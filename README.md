# Getting-and-Cleaning-data-Course-Project

This is the course project for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, does the following:

Download the Samsung dataset from the link provided.
Load the activity and feature info(activity_labels.txt and features.txt)
Extract only the measurements on the mean and standard deviation for each measurement
Getting the train data(subject_train.txt,X_train.txt,y_train.txt)
Get the test data(subject_test.txt,X_test.txt,y_test.txt)
Merges the train data together columnwise
Merges the two datasets
Merges the test data together columnwise
Merges train and test(rowwise)
Calculating average of each variable for each activity and subject to generate the tidy datatset
Saving the tidy dataset to a text file.
