source("DecisionTreeRegressionUtils.R")
library(ggplot2)

decisionTreeRegressionDataset = importDecisionTreeRegressionDataset("DecisionTreeRegression_Position_Salaries.csv")
  
#reading DecisionTreeRegression model
decisionTreeRegressionModel = readRDS("decisionTreeRegressionModel.RDS")

#visualizing DecisionTreeRegression result for higher resolution and smother curve
visualisingDecisionTreeRegressionResultForHigherResolution <- function(decisionTreeRegressionDataset, decisionTreeRegressionModel){
  
  x_grid = seq(min(decisionTreeRegressionDataset$Level), max(decisionTreeRegressionDataset$Level), 0.01)
  ggplot() +
    geom_point(aes(x = decisionTreeRegressionDataset$Level, y = decisionTreeRegressionDataset$Salary),
               colour = 'red') +
    geom_line(aes(x = x_grid, y = predict(decisionTreeRegressionModel, newdata = data.frame(Level = x_grid))),
              colour = 'blue') +
    ggtitle('Truth or Bluff (Decision Tree Regression)') +
    xlab('Level') +
    ylab('Salary')
  
  ggsave("DecisionTreeRegressionResultForHigherResolution.png")
  
}

#visualisingDecisionTreeRegressionResultForHigherResolution(decisionTreeRegressionDataset, decisionTreeRegressionModel)


# Plotting the tree
png('DecisionTree.png')
plot(decisionTreeRegressionModel)
text(decisionTreeRegressionModel)
dev.off()
