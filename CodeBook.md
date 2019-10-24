# Getting and Cleaning Data Course Project
## Description
These datasets are derived from the Human Activity Recognition Using Smartphones Dataset
Version 1.0. It is available at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Format
Two dataframes are included: tidyDF and by_subject_and_activity

### tidyDF

A dataframe of 10,299 observations of 68 variables.

| Column  | Variable  | Type  | Description  |   |
|---|---|---|---|---|
|[ ,1]| subjectid               |int | Identifier for each of the 30 test subjects
|[ ,2]| activity                |factor | Activity undertaken during observation
|[ ,3]| tbodyaccmeanx           |numeric | Mean of time domain measurement of body acceleration signal along x axis
|[ ,4]| tbodyaccmeany           |numeric | Mean of time domain measurement of body acceleration signal along y axis
|[ ,5]| tbodyaccmeanz           |numeric |  Mean of time domain measurement of body acceleration signal along z axis
|[ ,6]| tbodyaccstdx            |numeric |  Standard deviation of time domain measurement of body acceleration signal along x axis
|[ ,7]| tbodyaccstdy            |numeric | Standard deviation of time domain measurement of body acceleration signal along y axis
|[ ,8]| tbodyaccstdz            |numeric | Standard deviation of time domain measurement of body acceleration signal along z axis
|[ ,9]| tgravityaccmeanx        |numeric | Mean of time domain measurement of gravity acceleration signal along x axis
|[ ,10]| tgravityaccmeany        |numeric | Mean of time domain measurement of gravity acceleration signal along y axis
|[ ,11]| tgravityaccmeanz        |numeric | Mean of time domain measurement of gravity acceleration signal along z axis
|[ ,12]| tgravityaccstdx         |numeric | Standard deviation of time domain measurement of gravity acceleration signal along x axis
|[ ,13]| tgravityaccstdy         |numeric | Standard deviation of time domain measurement of gravity acceleration signal along y axis
|[ ,14]| tgravityaccstdz         |numeric | Standard deviation of time domain measurement of gravity acceleration signal along z axis
|[ ,15]| tbodyaccjerkmeanx       |numeric | Mean of jerk signal from linear body acceleration along x axis
|[ ,16]| tbodyaccjerkmeany       |numeric | Mean of jerk signal from linear body acceleration along y axis
|[ ,17]| tbodyaccjerkmeanz       |numeric | Mean of jerk signal from linear body acceleration along z axis
|[ ,18]| tbodyaccjerkstdx        |numeric | Standard deviation of jerk signal from linear body acceleration along x axis
|[ ,19]| tbodyaccjerkstdy        |numeric | Standard deviation of jerk signal from linear body acceleration along y axis
|[ ,20]| tbodyaccjerkstdz        |numeric | Standard deviation of jerk signal from linear body acceleration along z axis
|[ ,21]| tbodygyromeanx          |numeric | Mean of gyroscope meansurement of body movement along x axis
|[ ,22]| tbodygyromeany          |numeric | Mean of gyroscope meansurement of body movement along y axis
|[ ,23]| tbodygyromeanz          |numeric | Mean of gyroscope meansurement of body movement along z axis
|[ ,24]| tbodygyrostdx           |numeric | Standard deviation of gyroscope meansurement of body movement along x axis
|[ ,25]| tbodygyrostdy           |numeric | Standard deviation of gyroscope meansurement of body movement along y axis
|[ ,26]| tbodygyrostdz           |numeric | Standard deviation of gyroscope meansurement of body movement along z axis
|[ ,27]| tbodygyrojerkmeanx      |numeric | Mean of jerk signal from angular body acceleration along x axis
|[ ,28]| tbodygyrojerkmeany      |numeric | Mean of jerk signal from angular body acceleration along y axis
|[ ,29]| tbodygyrojerkmeanz      |numeric | Mean of jerk signal from angular body acceleration along z axis
|[ ,30]| tbodygyrojerkstdx       |numeric | Standard deviation of jerk signal from angular body acceleration along x axis
|[ ,31]| tbodygyrojerkstdy       |numeric | Standard deviation of jerk signal from angular body acceleration along y axis
|[ ,32]| tbodygyrojerkstdz       |numeric | Standard deviation of jerk signal from angular body acceleration along z axis
|[ ,33]| tbodyaccmagmean         |numeric | Mean magnitude of body acceleration
|[ ,34]| tbodyaccmagstd          |numeric | Standard deviation magnitude of body acceleration
|[ ,35]| tgravityaccmagmean      |numeric | Mean magnitude of gravity acceleration signal
|[ ,36]| tgravityaccmagstd       |numeric | Standard deviation of magnitude of gravity acceleration signal
|[ ,37]| tbodyaccjerkmagmean     |numeric | Mean magnitude of accelerometer jerk signal
|[ ,38]| tbodyaccjerkmagstd      |numeric | Standard deviation of accelerometer jerk signal
|[ ,39]| tbodygyromagmean        |numeric | Mean magnitude of body gyroscope signal
|[ ,40]| tbodygyromagstd         |numeric | Standard deviation of magnitude of body gyroscope signal
|[ ,41]| tbodygyrojerkmagmean    |numeric | Mean magnitude of gyroscope jerk signal
|[ ,42]| tbodygyrojerkmagstd     |numeric | Standard deviation of gyroscope jerk signal
|[ ,43]| fbodyaccmeanx           |numeric | Mean FFT of body acceleration along x axis
|[ ,44]| fbodyaccmeany           |numeric | Mean FFT of body acceleration along y axis
|[ ,45]| fbodyaccmeanz           |numeric | Mean FFT of body acceleration along z axis
|[ ,46]| fbodyaccstdx            |numeric | Standard deviation of FFT body acceleration along x axis
|[ ,47]| fbodyaccstdy            |numeric | Standard deviation of FFT body acceleration along y axis
|[ ,48]| fbodyaccstdz            |numeric | Standard deviation of FFT body acceleration along z axis
|[ ,49]| fbodyaccjerkmeanx       |numeric | Mean FFT of accelerometer jerk signal along x axis
|[ ,50]| fbodyaccjerkmeany       |numeric | Mean FFT of accelerometer jerk signal along y axis
|[ ,51]| fbodyaccjerkmeanz       |numeric | Mean FFT of accelerometer jerk signal along z axis
|[ ,52]| fbodyaccjerkstdx        |numeric | Standard deviation of FFT accelerometer jerk signal along x axis
|[ ,53]| fbodyaccjerkstdy        |numeric | Standard deviation of FFT accelerometer jerk signal along y axis
|[ ,54]| fbodyaccjerkstdz        |numeric | Standard deviation of FFT accelerometer jerk signal along z axis
|[ ,55]| fbodygyromeanx          |numeric | Mean FFT of gyroscope signal along x axis
|[ ,56]| fbodygyromeany          |numeric | Mean FFT of gyroscope signal along y axis
|[ ,57]| fbodygyromeanz          |numeric | Mean FFT of gyroscope signal along z axis
|[ ,58]| fbodygyrostdx           |numeric | Standard deviation of FFT of gyroscope signal along x axis
|[ ,59]| fbodygyrostdy           |numeric | Standard deviation of FFT of gyroscope signal along y axis
|[ ,60]| fbodygyrostdz           |numeric | Standard deviation of FFT of gyroscope signal along z axis
|[ ,61]| fbodyaccmagmean         |numeric | Mean FFT magnitude of accelerometer 
|[ ,62]| fbodyaccmagstd          |numeric | Standard FFT deviation of accelerometer
|[ ,63]| fbodybodyaccjerkmagmean |numeric | Mean magnitude of FFT  jerk magnitude body accelerometer
|[ ,64]| fbodybodyaccjerkmagstd  |numeric | Standard deviation of FFT  jerk magnitude body accelerometer
|[ ,65]| fbodybodygyromagmean    |numeric | Mean magnitude of FFT gyroscope
|[ ,66]| fbodybodygyromagstd     |numeric | Standard deviation of FFT magnitude of gyroscope
|[ ,67]| fbodybodygyrojerkmagmean|numeric | Mean magnitude of FFT bodybody Gyroscope Jerk
|[ ,68]| fbodybodygyrojerkmagstd |numeric | Standard deviation of FFT bodybody Gyroscope Jerk

### by_subject_and_activity

40 observations of 68 variables.

This dataset has the same variables as tidyDF, but reflects means of all values, grouped by subject and activity.