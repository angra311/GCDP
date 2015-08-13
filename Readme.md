---
title: "Readme.md"
output: html_document
---
The source file "run_analysis.R" causes the data table "summary" to be created

## Requirements
This source requires the samsung data set to found in the working directory, contained in a directory titled "UCI HAR Dataset"

## Process
The script follows the process oulined below:

* Read the feature names from file "features.txt"
* extract the indices of the ones we want to keep
* Load training data:
    * First, subjects from "subject_train.txt""
    * Then the measurements, from "X_train.txt", keeping only the ones we want.
    * finally the obseved activities, from "Y_train.txt", replacing the number with the descriptive name
* Load test data:
    * First, subjects from "subject_test.txt""
    * Then the measurements, from "X_test.txt", keeping only the ones we want.
    * finally the obseved activities, from "Y_test.txt", replacing the number with the descriptive name
    * Merge train and test into one dataset
* Then extract summaries by Activity and Subject for the other measurements
* clean up by deleting intermediate variables
