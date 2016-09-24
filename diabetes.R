set.seed(7)
library(mlbench)
library(caret)
# load data
csv.data <- read.csv("data/pima-indians-diabetes.data")
correlationMatrix <- cor(csv.data[,1:8])
# summarize the correlation matrix
print(correlationMatrix)
# find attributes that are highly corrected (ideally >0.75)
highlyCorrelated <- findCorrelation(correlationMatrix, cutoff=0.5)
print(highlyCorrelated)

