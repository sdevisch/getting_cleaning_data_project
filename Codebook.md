The script run_analysis.Rperforms the 5 steps described in the course project's definition.

First, we identify feature labels and distill the ones for mean and std
We then load and merge dimlar using the rbind() function. By similar, we address those files having the same number of columns and referring to the same entities.

Then, only those columns with the mean and standard deviation measures are taken from the whole dataset. After extracting these columns, they are given the correct names, taken from features.txt.

We finally caculate the mean for each column and output the data in tidy.txt

x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files.
x_data, y_data and subject_data merge the previous datasets to further analysis.
features contains the correct names for the x_data dataset,
allData, and allData.melted and allData.mean 

