# Microsoft HAR Dataset Preprocessing Code
[Microsoft Link](https://www.microsoft.com/en-us/research/project/workout/?from=http%3A%2F%2Fresearch.microsoft.com%2Fcue%2Fworkout)

This repository contains preprocessing codes of the microsoft exercise recognition from wearables sensor datasets. In the official repo, only the data is uploaded.
Here, I uploaded the matlab file to preprocess the `exercise_data.50.0000_singleonly.mat` file into csv file. Moreover, I uploaded a Jupyter notebook to preprocess the file
into a format for deep learning / machine learning application. 

# Steps to follow 

1. Download the `exercise_data.50.0000_singleonly.mat` file from the above Microsoft official link. 
2. Run the matlab file `process_matlab.m`. This will save each user record into a csv file. Place all the generated files in `raw_data` directory.
3. Run through the `preprocess_ms_data.ipynb` file. Currently, I have chunked the data with a window size of 160.


# Data Screenshot
![Data snippet](/processed_data/data_screenshot.png)
