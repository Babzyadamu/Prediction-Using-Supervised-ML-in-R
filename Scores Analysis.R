# Loading the dataset

library(readr)
df <- read_csv("Google Data Analytics/Google Data Analytics/Grip Spark Foundation/Scores_Dataset.csv")
View(df)

# Exploring the data
dim(df)
head(df,6)
tail(df)
ncol(df)
nrow(df)

summary(df)

var(df$Scores)

sd(df$Scores)


# Handling missing values if any
sum(is.na(df))


#  Visualizing the distribution of the target variable (Scores)
library(ggplot2)
ggplot(df, aes(x = Scores)) + 
  geom_histogram(bins = 10, color = "white", fill = "#69b3a2") +
  labs(title = "Distribution of Scores") +
  xlab("Scores") + ylab("Count")

# From the histogram, we can see that the target variable is normally distributed with a slight skewness towards 
# the right

# I want to see the relationship between the target variable 'Scores' and the feature variable 'Hours' 
# using a scatter plot.

ggplot(df, aes(x = Hours, y = Scores)) +
  geom_point(color = "#69b3a2") +
  labs(title = "Relationship between Hours and Scores") +
  xlab("Hours") + ylab("Scores")

# From the scatter plot, we can see that there is a positive linear relationship between the target variable 'Scores' 
# and the feature variable 'Hours'. Hence we can go ahead split the dataset.

# We can then split the dataset into training and testing sets, and train a linear regression model on the training set to predict the 
# target variable 'Scores' based on the feature variable 'Hours'. We will use the caret package for this purpose.

# Splitting the dataset into training and testing sets
library(caret)
set.seed(123)
trainIndex <- createDataPartition(df$Scores, p = 0.8, list = FALSE)
train <- df[trainIndex,]
test <- df[-trainIndex,]

# Training a linear regression model on the training set

model <- lm(Scores ~ Hours, data = train)

# We can now make predictions on the testing set and evaluate
# its performance using metrics such as mean absolute error, mean squared error
# and root mean squared error.

y_pred <- predict(model, newdata = test)

# Evaluating the performance of the model

mae <- mean(abs(test$Scores - y_pred))
mse <- mean((test$Scores - y_pred)^2)
rmse <- sqrt(mean((test$Scores - y_pred)^2))

cat("Mean Absolute Error:", mae, "\n")
cat("Mean Squared Error:", mse, "\n")
cat("Root Mean Squared Error:", rmse, "\n")


# To predict the percentage if a student studies for 9.25 hours/day, we can use the predict() function 
# on the trained model.

# Predicting the percentage if a student studies for 9.25 hours/day
new_data <- data.frame(Hours = 9.25)
y_pred_new <- predict(model, newdata = new_data)
cat("Predicted Score if a student studies for 9.25 hours/day:", y_pred_new, "\n")

