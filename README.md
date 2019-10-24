# cds-3-4-pga
Peer graded assignment for Coursera Data Science Course 3 Week 4

## Summary
run_analysis.R loads data from UCI HAR Dataset, performs analysis, and outputs two datasets. See Codebook.md for more details.

## Processing Steps

1. Loads tidyverse library
2. Loads mapping of features from source data
3. Loads mapping of activities from source data
4. For both "test" and "train" data in source:
    1. Loads a vector of subject IDs
    2. Loads a vector of activity IDs
    3. Creates a vector of activity labels by merging with activity mapping
    4. Binds subject ID vector and activity vectors
    5. Loads a dataframe of results from source as fixed width file, alternating 1 and 15 length columns and dropping empty odd columns to get 561 variables
    6. Maps names from feature mapping to columns of results dataset
    7. With grep, selects only desired columns (containing means and standards deviations, per assignment)
    8. cbinds result DFs to DFs of subject IDs and activities
5. rbinds test and train DFs into tidyDF
6. In tidyDF, strips special chars from variable names and casts all to lower
7. Converts tidyDF to tibble, for use with dplyr
8. Creates by_subject_and_activity DF by grouping tidyDF on subject and activity and applying mean function to all other variables
9. Removes all objects excetp tidyDF and by_subject_and_activity
10. Writes tidyDF and by_subject_and_activity to tab-separated text files

## Assumptions
Before running run_analysis.R, you should have downloaded the target dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzipped it in the project directory.