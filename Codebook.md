---
Title: "Codebook template"
Author: "Rutu Kiran"
Date: "05/08/2020"
---

## Project Description
The project collects and cleans data from the UCI ML repository Human Activity recognition using Smartphones.

## Creating the tidy datafile

### Data Collection
Data was collected by the url in a zip file. Unzipped file contained features, activity labels files and train, test data folders.
Information on the features are also present in the text file.


## Description of the variables in the tidied.txt file
t and f in the beginning of the column name refers to signals in the time domain and the frequency domain respectively. 
The X, Y and Z are the directions of the signals.
The mean and standard deviation of the signals are selected from the values for each activity for each subject.
The data is melted and recast based on the subject name and activity performed and is aggregated on the mean.
There are 66 columns and their names are as follows.

