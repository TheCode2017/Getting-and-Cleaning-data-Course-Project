# Getting-and-Cleaning-data-Course-Project

This is the course project for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, does the following:


1.Download the Samsung dataset from the link provided.(https://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones).

2.Load the activity and feature info(activity_labels.txt and features.txt).

3.Extract only the measurements on the mean and standard deviation for each measurement.

4.Get the train data(subject_train.txt,X_train.txt,y_train.txt).

5.Get the test data(subject_test.txt,X_test.txt,y_test.txt).

6.Merges the train data together columnwise.

7.Merges the two datasets.

8.Merges the test data together columnwise.

9.Merges train and test(rowwise).

10.Calculates average of each variable for each activity and subject to generate the tidy datatset.

11.Saves the tidy dataset to a text file.
