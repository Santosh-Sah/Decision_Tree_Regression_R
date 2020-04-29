source("DecisionTreeRegressionUtils.R")

library(rpart)

#reading dataset
decisionTreeRegressionDataset = importDecisionTreeRegressionDataset("DecisionTreeRegression_Position_Salaries.csv")
  
# Fitting DecisionTreeRegression dataset
decisionTreeRegression = rpart(formula = Salary ~ ., 
                               data = decisionTreeRegressionDataset,
                               control = rpart.control(minsplit = 1))

#saving DecisionTreeRegression model
saveDecisionTreeRegressionModel(decisionTreeRegression)