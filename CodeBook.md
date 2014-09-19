---
output: pdf_document
---
#Code Book of tidydatatable.txt and tidydatatable.xlsx

This code book that describes the variables and the data.  Any transformations or work that have been performed
to clean up the data are described in the README.md file.  The output of the project can be found in the 
tidydatatable.txt and tidydatatable.xlsx files within the github repository.  

The raw data contained in this project consists of the following 8 files:

        * activity_labels.txt: names of 6 activities performed by subjects
        * features.txt: names of all 561 variables observed
        * subject_test.txt: subject performing activity in test group, indicated by numbers 1-30
        * X_test.txt: raw data with measurements by subject and activity type in test group (2946 subject-activities)
        * y_test.txt: activity performed by subject in test group, indicated by numbers 1-6
        * subject_train.txt: subject performing activity in train group, indicated by numbers 1-30
        * X_train.txt: raw data with measurements by subject and activity type in train group (2946 subject-activities)
        * y_train.txt: activity performed by subject in train group, indicated by numbers 1-6

The signals used to estimate the variables are the following:

        * tBodyAcc-XYZ: linear body acceleration
        * tGravityAcc-XYZ: gravitational acceleration
        * tBodyAccJerk-XYZ: body acceleration, jerk movement
        * tBodyGyro-XYZ: body angular acceleration
        * tBodyGyroJerk-XYZ: body angular acceleration, jerk movement
        * tBodyAccMag: body acceleration magnitude
        * tGravityAccMag: gravitational acceleration magnitude
        * tBodyAccJerkMag: body acceleration jerk, maginitude
        * tBodyGyroMag: angular velocity magnitude
        * tBodyGyroJerkMag: angular jerk velocity magnitude
        * fBodyAcc-XYZ: Fast Fourier Transformation of tBodyAcc-XYZ
        * fBodyAccJerk-XYZ: Fast Fourier Transformation of tGravityJerk-XYZ
        * fBodyGyro-XYZ: Fast Fourier Transformation of tBodyGyrok-XYZ
        * fBodyAccMag: Fast Fourier Transformation of tBodyAccMag-XYZ
        * fBodyAccJerkMag: Fast Fourier Transformation of tBodyAccJerkMag-XYZ
        * fBodyGyroMag: Fast Fourier Transformation of tBodyGyroMag-XYZ
        * fBodyGyroJerkMag: Fast Fourier Transformation of tBodyGyroJerkMag-XYZ

The following is a list of all the variables obtained from the data:

1.  "Body Linear Acc-mean()-X": linear acceleration, x axis (mean)
2.  "Body Linear Acc-mean()-Y": linear acceleration, y axis (mean)
3.  "Body Linear Acc-mean()-Z": linear acceleration, z axis (mean)
4.  "Body Linear Acc-std()-X": linear acceleration, x axis (standard deviation)
5.  "Body Linear Acc-std()-Y": linear acceleration, y axis (standard deviation)
6.  "Body Linear Acc-std()-Z": linear acceleration, axis (standard deviation)
7.  "Gravity Acc-mean()-X": graviational acceleration, x axis (mean)
8.  "Gravity Acc-mean()-Y": graviational acceleration, y axis (mean)
9.  "Gravity Acc-mean()-Z": graviational acceleration, z axis (mean)
10. "Gravity Acc-std()-X": graviational acceleration, x axis (standard deviation)
11. "Gravity Acc-std()-Y": graviational acceleration, y axis (standard deviation)
12. "Gravity Acc-std()-Z": graviational acceleration, z axis (standard deviation)
13. "Body Linear Acc Jerk-mean()-X": linear jerk acceleration, x axis (mean)
14. "Body Linear Acc Jerk-mean()-Y": linear jerk acceleration, y axis (mean)
15. "Body Linear Acc Jerk-mean()-Z": linear jerk acceleration, z axis (mean)
16. "Body Linear Acc Jerk-std()-X": linear jerk acceleration, x axis (standard deviation)
17. "Body Linear Acc Jerk-std()-Y": linear jerk acceleration, y axis (standard deviation)
18. "Body Linear Acc Jerk-std()-Z": linear jerk acceleration, z axis (standard deviation)
19. "Body Angular Vel-mean()-X": angular velocity, x axis (mean)
20. "Body Angular Vel-mean()-Y": angular velocity, y axis (mean)
21. "Body Angular Vel-mean()-Z": angular velocity, z axis (mean)
22. "Body Angular Vel-std()-X": angular velocity, x axis (standard deviation)
23. "Body Angular Vel-std()-Y": angular velocity, y axis (standard deviation)
24. "Body Angular Vel-std()-Z": angular velocity, z axis (standard deviation)
25. "Body Angular Vel Jerk-mean()-X": angular jerk velocity, x axis (mean)
26. "Body Angular Vel Jerk-mean()-Y": angular jerk velocity, y axis (mean)
27. "Body Angular Vel Jerk-mean()-Z": angular jerk velocity, z axis (mean)
28. "Body Angular Vel Jerk-std()-X": angular jerk velocity, x axis (standard deviation)
29. "Body Angular Vel Jerk-std()-Y": angular jerk velocity, y axis (standard deviation)
30. "Body Angular Vel Jerk-std()-Z": angular jerk velocity, z axis (standard deviation)
31. "Body Linear Acc Magnitude-mean()": linear acceleration signal magnitude (mean)
32. "Body Linear Acc Magnitude-std()": linear acceleration signal magnitude (standard deviation)
33. "Gravity Acc Magnitude-mean()": gravitational acceleration signal magnitude (mean)
34. "Gravity Acc Magnitude-std()": gravitational acceleration signal magnitude (standard deviation)
35. "Body Linear Jerk Magnitude-mean()": linear jerk acceleration signal magnitude (mean)
36. "Body Linear Jerk Magnitude-std()": linear jerk acceleration signal magnitude (standard deviation)
37. "Body Angul Vel Magnitude-mean()": angular velocity signal magnitude (mean)
38. "Body Angul Vel Magnitude-std()": angular velocity signal magnitude (standard deviation)
39. "Body Angular Jerk Magnitude-mean()": angular jerk velocity signal maginitude (mean)
40. "Body Angular Jerk Magnitude-std()": angular jerk velocity signal maginitude (standard deviation)
41. "Body Linear Acc (FFT)-mean()-X": acceleration (Fast Fourier Transform), x axis (mean)
42. "Body Linear Acc (FFT)-mean()-Y": acceleration (Fast Fourier Transform), y axis (mean)
43. "Body Linear Acc (FFT)-mean()-Z": acceleration (Fast Fourier Transform), z axis (mean)
44. "Body Linear Acc (FFT)-std()-X": linear acceleration (Fast Fourier Transform), x axis (standard deviation)
45. "Body Linear Acc (FFT)-std()-Y" linear acceleration (Fast Fourier Transform), y axis ( (standard deviation)
46. "Body Linear Acc (FFT)-std()-Z"  linear acceleration (Fast Fourier Transform), z axis ((standard deviation)
47. "Body Linear Acc (FFT)-meanFreq()-X": linear acceleration mean frequency (Fast Fourier Transform), x axis
48. "Body Linear Acc (FFT)-meanFreq()-Y": linear acceleration mean frequency (Fast Fourier Transform), y axis
49. "Body Linear Acc (FFT)-meanFreq()-Z": linear acceleration mean frequency (Fast Fourier Transform), z axis
50. "Body Linear Jerk (FFT)-mean()-X": linear jerk acceleration, (Fast Fourier Transform) x axis (mean)
51. "Body Linear Jerk (FFT)-mean()-Y": linear jerk acceleration, (Fast Fourier Transform) y axis (mean)
52. "Body Linear Jerk (FFT)-mean()-Z": linear jerk acceleration, z axis (mean)
53. "Body Linear Jerk (FFT)-std()-X": linear jerk acceleration, x axis (standard deviation)
54. "Body Linear Jerk (FFT)-std()-Y": linear jerk acceleration, y axis (standard deviation)
55. "Body Linear Jerk (FFT)-std()-Z": linear jerk acceleration, z axis (standard deviation)
56. "Body Linear Jerk (FFT)-meanFreq()-X": linear jerk acceleration mean frequency (FFT), x axis
57. "Body Linear Jerk (FFT)-meanFreq()-Y": linear jerk acceleration mean frequency (FFT), y axis
58. "Body Linear Jerk (FFT)-meanFreq()-Z": linear jerk acceleration mean frequency (FFT), z axis
59. "Body Angular Vel (FFT)-mean()-X" (mean): angular velocity (FFT), x axis (mean)
60. "Body Angular Vel (FFT)-mean()-Y" (mean): angular velocity (FFT), y axis (mean)
61. "Body Angular Vel (FFT)-mean()-Z" (mean): angular velocity (FFT), z axis (mean)
62. "Body Angular Vel (FFT)-std()-X": angular velocity (FFT), x axis (standard deviation)
63. "Body Angular Vel (FFT)-std()-Y": angular velocity (FFT), y axis (standard deviation)
64. "Body Angular Vel (FFT)-std()-Z": angular velocity (FFT), z axis (standard deviation)
65. "Body Angular Vel (FFT)-meanFreq()-X": angular velocity mean frequency (FFT), x axis
66. "Body Angular Vel (FFT)-meanFreq()-Y": angular velocity mean frequency (FFT), y axis
67. "Body Angular Vel (FFT)-meanFreq()-Z": angular velocity mean frequency (FFT), z axis
68. "Body Linear Acc (FFT)Mag-mean()" (mean): linear acceleration signal magnitude (FFT) (mean)
69. "Body Linear Acc (FFT)Mag-std()": linear acceleration signal magnitude (FFT) (mean) (standard deviation)
70. "Body Linear Acc (FFT)Mag-meanFreq()": linear acceleration signal magnitude mean frequency (FFT)
71. "Body Linear Jerk (FFT)-mean()" (mean): linear jerk acceleration (FFT) (mean)
72. "Body Linear Jerk (FFT)-std()": linear jerk acceleration (FFT) (standard deviation)
73. "Body Linear Jerk (FFT)-meanFreq()": linear jerk acceleration mean frequency (FFT)
74. "Body Angular Vel Magnitude (FFT)-mean()": angular velocity signal magnitude (FFT) (mean)
75. "Body Angular Vel Magnitude (FFT)-std()": angular velocity signal magnitude (FFT) (standard deviation)
76. "Body Angular Vel Magnitude (FFT)-meanFreq()": angular velocity signal magnitude mean frequency (FFT)
77. "Body Angular Jerk Magnitude (FFT)-mean()": angular jerk velocity signal magnitude (FFT) (mean)
78. "Body Angular Jerk Magnitude (FFT)-std()":  angular jerk velocity signal magnitude (FFT) (standard deviation)
79. "Body Angular Jerk Magnitude (FFT)-meanFreq()": angular jerk velocity signal magnitude mean frequency (FFT)
        
        