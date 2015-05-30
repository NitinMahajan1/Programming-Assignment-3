setwd("C:/Users/nitin/OneDrive/WIP/Coursera/Programming-Assignment-3")

best <- function(state, outcome) {
  ## Read outcome data
  outcomes <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
 
  ## Check that state and outcome are valid
  if ((count(subset(outcomes,outcomes$State==state))) < 1)   stop("invalid state")
  if (!(outcome=="heart attack" | outcome=="heart failure" | outcome=="pneumonia"))   stop("invalid outcome")
  
  ## Return hospital name in that state with lowest 30-day death
  ## rate  
} 

