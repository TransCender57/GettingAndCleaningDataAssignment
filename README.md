# GettingAndCleaningDataAssignment

This script "cleans" the UCI Human Activity Recognition Using Smartphones Data Set and determines averages (means) for a number of measurements.

run_analysis.R performs the following on the data set:

  1. Replaces the numeric activities in the training data set with the corresponding alphabetic name.
  2. Replaces the numeric activities in the test data set with the corresponding alphabetic name.
  3. Merges the test set and the training set into one data set.
  4. Subsets the merged data set, keeping only measurements for mean and standard deviation.
  5. Computes the mean for the measurements for each subject and activity

