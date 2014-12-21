# CodeBook for "Human Activity Recognition Using Smartphones Data Set" tidy datasets

## Origin of the data
The data is built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Original data and description of the experimental protocol is available here:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

## Data format
Text file, space separated values.

## Datasets

The data was transformed to produce two comprehensive datasets:

### tidy-data-meanstd.txt

A dataset comprising all mean and standard deviation measures from the test and train groups, with subject and activity labels.

**Variables:**
1. subject
integer
1-30 subjects participating to the experiment, both in test and train phases
2. activity_label
string
activity performed by the subject during the experiment (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3. 79 variables of means and standard deviations of measures recorded by a Samsung Galaxy SII worn on the waist by the participants during the activity: 3-axial linear acceleration and 3-axial angular velocity captured by the phone's embedded accelerometer and gyroscope.
numeric

### tidy-data-averages.txt

A dataset comprising of average measures of mean and standard deviations for each subject and activity.

**Variables:**
1. subject
integer
1-30 subjects participating to the experiment, both in test and train phases
2. activity_label
string
activity performed by the subject during the experiment (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3. 79 variables of the average means and standard deviations of measures recorded by a Samsung Galaxy SII worn on the waist by the participants during the activity: 3-axial linear acceleration and 3-axial angular velocity captured by the phone's embedded accelerometer and gyroscope.
numeric