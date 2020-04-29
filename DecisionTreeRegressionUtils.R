importDecisionTreeRegressionDataset <- function(decisionTreeRegressionDatasetFileName) {
  
  #importing dataset
  #dataset is very small and hence we are not going to split into training and testing set
  decisionTreeRegressionDataset = read.csv(decisionTreeRegressionDatasetFileName)
  
  decisionTreeRegressionDataset = decisionTreeRegressionDataset[2:3]
  
  return (decisionTreeRegressionDataset)
  
}

#Save DecisionTreeRegression Model
saveDecisionTreeRegressionModel <- function(decisionTreeRegressionModel) {
  
  saveRDS(decisionTreeRegressionModel, file = "decisionTreeRegressionModel.RDS")
}
