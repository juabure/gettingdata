#README.md

This is how the script works.  This sequence followed to convert the data from raw to tidy is described in the following 
steps.  

 STEP 1 - raw data is retrieved and stored 

The raw data contained in this project consists of the following files:

        * activity_labels.txt: names of 6 activities performed by subjects
        * features.txt: names of all 561 variables observed
        * subject_test.txt: subject performing activity in test group, indicated by numbers 1-30
        * X_test.txt: raw data with measurements by subject and activity type in test group (2946 subject-activities)
        * y_test.txt: activity performed by subject in test group, indicated by numbers 1-6
        * subject_train.txt: subject performing activity in train group, indicated by numbers 1-30
        * X_train.txt: raw data with measurements by subject and activity type in train group (2946 subject-activities)
        * y_train.txt: activity performed by subject in train group, indicated by numbers 1-6

Raw data is stored in the following variables in R, corresponding to the raw datafiles described above:

        * activity_labels 
        * subject_train 
        * x_train_raw
        * y_train_raw
        * subject_test
        * x_test_raw
        * y_test_raw
        * features

STEP 2 - raw data is transformed into a format that allows processing by R

2.1.    x_train_raw and x_test_raw are dataframes with 1 column and 7,351 and 2,946 rows, respectively.  
        Each row is a long character string containing 561 measurements per subject, per activity.  
        The function 'getdf' is used to transform each character string into 561 variables.  
        The resulting output is placed in a dataframe 
        
        