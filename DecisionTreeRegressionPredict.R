source("DecisionTreeRegressionUtils.R")

#reading DecisionTreeRegression model
decisionTreeRegressionModel = readRDS("decisionTreeRegressionModel.RDS")

inputValue<- data.frame(Level = 6.5)

#predicting new data
predictedValues = predict(decisionTreeRegressionModel, newdata = inputValue)

predictedValues #250000

