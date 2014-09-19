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
        * features: a factor variable, transformed into characters and saved as varnames
        * subject_train 
        * x_train_raw
        * y_train_raw
        * subject_test
        * x_test_raw
        * y_test_raw


STEP 2 - raw data is transformed into a format that allows processing by R

2.1     'x_train_raw' and 'x_test_raw' are dataframes with 1 column and 7,351 and 2,946 rows, respectively.  
        Each row is a long character string containing 561 measurements per subject, per activity.  
        The function 'getdf' is used to transform each character string into 561 variables.  
        The resulting output is placed in two separate dataframes ('x_train_df' and 'x_test_df').
        Names are assigned to these dataframes based on the features file, now contained in 'varnames'.  

2.2     Activity labels are changed in the activity_labels dataframe from numbers to their names.
        The activity names are assigned to the 'y_train_df' and 'y_test_df' variables.

2.3     The 'subject_test' and 'subject_train' files are merged and placed into a new dataframe called 'subject_df'

2.4     'x_train_df' and 'x_test_df' are merged into 'dataset_df'
        'y_train_df' and 'y_test_df' are merged into 'activity_df'
        
STEP 3 - once data is in the right format we can extract the variables we need

3.1     Extract those variable columns from 'dataset_df' that pertain to means and stdevs
        The function 'extract vector' was used and the result placed in 'dataset_meanstd_df'
        Merge the 'subject_df', 'activity_df', 'dataset_meanstd_df' and place in 'table' 
        'table' is sorted by subject and activity name

3.2     Assign more descriptive names to the variables using the 'goodnames' function

3.3     Consolidate the data in 'table' by computing the means of each variable

3.4     Write output to text and excel files

FUNCTIONS - Description of the functions used in the processing of data

        'getdf': extracts 561 numbers from the character string of each row
        
        'getchar': auxiliary function used by 'getdf' to extract numbers from a string; returns a numeric vector
        
        'subnames': replaces activity numbers with names
        
        'extract vector': loops through columns of the dataframe and returns another dataframe only with variables 
        that pertain to means and standard deviations
        
        'goodnames': loops through each variable names and replaces it with more descriptive names
        
        'varmeans': loops through each variable column; computes a dcast and obtains the mean for each 
        subject and activity; places data in a new dataframe
        


        
        
        