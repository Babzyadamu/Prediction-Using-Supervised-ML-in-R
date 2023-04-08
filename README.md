# Prediction-Using-Supervised-ML-in-R

![](Predictive_Analytics.jpg)

## Introduction
This is a GRIP task analysis that requires use of python to carry out prediction using Supervised ML of the given data. In this task, A prediction of the percentage of marks that a student is expected to score based upon the number of hours they studied. 

## Problem Statement 
The aim of this analysis is to answer the following business related questions:
- Predict the percentage of students based on the no. of study hours?
- What will be the predicted score if a student studies for 9.25hrs/day?

## Methodology:
- Loading the data
- Exploratory Data Analysis
- Visualizing the data
- Splitting, modelling and training the data
- Conclusion

## Skills, Concept & Library used:
- ggplot2
- caret
- modelling
- statistical analysis
- visualization
- data manipulation
- critical thinking

# Loading the Data
![](loading_and_view.jpg)

The data was viewed after loading it in R using the view(df) code
![](view_df.jpg)

# Exploring the Data
![](data_exploration_1.jpg)

Furthermore, statistical analysis was carried out on the target variable.

![](statistical_analysis.jpg)

![](missing_value.jpg)

The above checks for missing values in the data set and we can see that all data are complete without any missing values

# Visualizing the Data

![](scores_distribution.jpg)

The above visual gives understanding of how normally distributed the target variable is. We notice a slight skewness to the right.

![](linear_relationship.jpg)

The above visual shows us the relationship between the target variable and associate variable. This clearly shows a linear relationship meaning as the hours of reading increases, the scores increase.

# Training, Testing & Modelling 
![](Splitting_df_train_test.jpg)

The above shows the data was splitted into 80% train and 20% test.

![](training_linear_regression_model.jpg)

The model was trained using the above code and the variables were defined to point to the new trained data set and not the untrained dataset.

![](model_evaluation.jpg)

Finally, the model was evaluated. This is very key as it allows us to assesss how well the model is likely to generalize new unseen data. The 3 metrics used for evaluation of model peformance are Mean Absolute Error, Mean Squared Error and Root Mean Squared Error.
## Conclusion 
The predicted Score if a student studies for 9.25 hours/day is approximately 93.33%.
![](final_answer.jpg)
## All Analysis are explained in details in the R file.
