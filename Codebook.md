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

"tBodyAcc-mean-X"           
"tBodyAcc-mean-Y"           
"tBodyAcc-mean-Z" 

"tBodyAcc-std-X"           
"tBodyAcc-std-Y"         
"tBodyAcc-std-Z"          

"tGravityAcc-mean-X"     
"tGravityAcc-mean-Y"       
"tGravityAcc-mean-Z"    

"tGravityAcc-std-X"  
"tGravityAcc-std-Y"    
"tGravityAcc-std-Z"        

"tBodyAccJerk-mean-X"    
"tBodyAccJerk-mean-Y"           
"tBodyAccJerk-mean-Z"  

"tBodyAccJerk-std-X"       
"tBodyAccJerk-std-Y"                        
"tBodyAccJerk-std-Z" 

"tBodyGyro-mean-X"  
"tBodyGyro-mean-Y"  
"tBodyGyro-mean-Z"       

"tBodyGyro-std-X"    
"tBodyGyro-std-Y"   
"tBodyGyro-std-Z"

"tBodyGyroJerk-mean-X"        
"tBodyGyroJerk-mean-Y"          
"tBodyGyroJerk-mean-Z" 

"tBodyGyroJerk-std-X"               
"tBodyGyroJerk-std-Y"             
"tBodyGyroJerk-std-Z" 

"tBodyAccMag-mean"                    
"tBodyAccMag-std" 

"tGravityAccMag-mean"                             
"tGravityAccMag-std"  

"tBodyAccJerkMag-mean"                                    
"tBodyAccJerkMag-std"      

"tBodyGyroMag-mean"  
"tBodyGyroMag-std"  

"tBodyGyroJerkMag-mean"                         
"tBodyGyroJerkMag-std"   

"fBodyAcc-mean-X"    
"fBodyAcc-mean-Y"                         
"fBodyAcc-mean-Z"    

"fBodyAcc-std-X"           
"fBodyAcc-std-Y"     
"fBodyAcc-std-Z"      

"fBodyAccJerk-mean-X"  
"fBodyAccJerk-mean-Y"                   
"fBodyAccJerk-mean-Z"  

"fBodyAccJerk-std-X"                          
"fBodyAccJerk-std-Y"     
"fBodyAccJerk-std-Z" 

"fBodyGyro-mean-X"                        
"fBodyGyro-mean-Y"                      
"fBodyGyro-mean-Z"

"fBodyGyro-std-X"               
"fBodyGyro-std-Y"                   
"fBodyGyro-std-Z"     

"fBodyAccMag-mean"    
"fBodyAccMag-std"          

"fBodyBodyAccJerkMag-mean"                                    
"fBodyBodyAccJerkMag-std"  

"fBodyBodyGyroMag-mean"  
"fBodyBodyGyroMag-std"     

"fBodyBodyGyroJerkMag-mean"                   
"fBodyBodyGyroJerkMag-std"
