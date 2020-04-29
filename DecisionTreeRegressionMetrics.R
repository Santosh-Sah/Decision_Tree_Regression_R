source("DecisionTreeRegressionUtils.R")

#reading DecisionTreeRegression model
decisionTreeRegressionModel = readRDS("decisionTreeRegressionModel.RDS")

summary(decisionTreeRegressionModel)

# Call:
#   rpart(formula = Salary ~ ., data = decisionTreeRegressionDataset,
#         control = rpart.control(minsplit = 1))
# n= 10
# 
# CP nsplit  rel error   xerror      xstd
# 1 0.77638626      0 1.00000000 1.234568 0.7835133
# 2 0.15496716      1 0.22361374 1.197273 0.7875621
# 3 0.05217357      2 0.06864658 1.182210 0.7896409
# 4 0.01000000      3 0.01647301 1.182210 0.7896409
# 
# Variable importance
# Level
# 100
# 
# Node number 1: 10 observations,    complexity param=0.7763863
# mean=249500, MSE=8.066225e+10
# left son=2 (8 obs) right son=3 (2 obs)
# Primary splits:
#   Level < 8.5 to the left,  improve=0.7763863, (0 missing)
# 
# Node number 2: 8 observations,    complexity param=0.05217357
# mean=124375, MSE=6.921484e+09
# left son=4 (6 obs) right son=5 (2 obs)
# Primary splits:
#   Level < 6.5 to the left,  improve=0.7600316, (0 missing)
# 
# Node number 3: 2 observations,    complexity param=0.1549672
# mean=750000, MSE=6.25e+10
# left son=6 (1 obs) right son=7 (1 obs)
# Primary splits:
#   Level < 9.5 to the left,  improve=1, (0 missing)
# 
# Node number 4: 6 observations
# mean=82500, MSE=1.38125e+09
# 
# Node number 5: 2 observations
# mean=250000, MSE=2.5e+09
# 
# Node number 6: 1 observations
# mean=500000, MSE=0
# 
# Node number 7: 1 observations
# mean=1000000, MSE=0