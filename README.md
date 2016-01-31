===========================================================
README for Getting and Cleaning Data Assignment
Doryan Gowty
31/01/2016
===========================================================
This README accompanies the run_analysis.R script provided
on my GIT repository. 

run_analysis.R script takes inputs from the "Human Activity 
Recognition Using Smartphones Data Set". It the 
provides intuitively labeled variables and activities and
provides data summarised at the avtivity and subject(human)
level.

To run this script you will need the following data files 
sitting in your working directory:
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


The script will take these files and place the a summarised 
version of the data in you working directory called 
"summary_out.txt"

===========================================================