The script run_analysis.R performs the following steps.

First, we identify feature labels and distill the ones for mean and std
We then load and merge data with identical columns using the rbind() function

Then, only those columns with the mean and standard deviation measures are taken from the whole dataset. 

After extracting these columns, they are given the correct names, taken from features.txt.

We finally caculate the mean for each column and output the data in tidy.txt

x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files.

x_data, y_data and subject_data merge the previous datasets to further analysis.
features contains the correct names for the x_data dataset, and 
allData,  allData.melted and allData.mean contain the result

