# Implementing the modified version of Naive Bayes based on our studies
# Testing for requirements elicitation purpose

# Load required libraries
library(tm)
library(RTextTools)
library(e1071)
library(dplyr)
library(caret)
#Library for parallel processing
#install.packages("doMC", repos="http://R-Forge.R-project.org")
library(doMC)
registerDoMC(cores=detectCores())  # Use all available cores

# Load Data
setwd("C:/Users/malsa876/Desktop/RTest/DATASET")
df<- read.csv("mytracks_NaiveBayes_Filter.csv", stringsAsFactors = FALSE)
glimpse(df)

# Randomizing Dataset
df <- df[sample(nrow(df)), ]
df <- df[sample(nrow(df)), ]
#glimpse(df)

# Convert the 'Label' variable from character to factor.
df$class <- as.factor(df$Label)

corpus <- Corpus(VectorSource(df$Review))
# Inspect the corpus
#corpus
#inspect(corpus[1:3])


dtm <- DocumentTermMatrix(corpus)
# Inspect the dtm
#inspect(dtm[40:50, 10:15])


# Data Partitinoning - 90% training, 10% testing
df.train <- df[1:3602,]
df.test <- df[3603:4003,]
dtm.train <- dtm[1:3602,]
dtm.test <- dtm[3603:4003,]

corpus.clean.train <- corpus[1:3602] #cleaned from data pre-processing
corpus.clean.test <- corpus[3603:4003] #cleaned from data pre-processing

dim(dtm.train)

# Now use all the features (words) to build the Document Term Matrix for learning purpose
dtm.train.nb <- DocumentTermMatrix(corpus.clean.train)

dim(dtm.train.nb)

dtm.test.nb <- DocumentTermMatrix(corpus.clean.test)

dim(dtm.train.nb)

# Function to convert the word frequencies to yes (present) and no (absent) features (words)
convert_count <- function(x) {
  y <- ifelse(x > 0, 1,0)
  y <- factor(y, levels=c(0,1), labels=c("No", "Yes"))
  y
}

trainNB <- apply(dtm.train.nb, 2, convert_count)
testNB <- apply(dtm.test.nb, 2, convert_count)

# glimpse(trainNB)
# View(trainNB)
# glimpse(testNB)

# Train the classifier with Laplace Smoothing on present and absent features information
system.time( classifier <- naiveBayes(trainNB, df.train$class, laplace = 1) )
system.time( pred <- predict(classifier, newdata=testNB) )

table("Predictions"= pred,  "Actual" = df.test$class)


conf.mat <- confusionMatrix(pred, df.test$class)
#conf.mat
#conf.mat$byClass
conf.mat$overall
conf.mat$overall['Accuracy']

