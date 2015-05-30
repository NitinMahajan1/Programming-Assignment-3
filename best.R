setwd("C:/Users/nitin/OneDrive/WIP/Coursera/Programming-Assignment-3")

best <- function(state, outcome) {
  ## Read outcome data
  outcomes <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  ##Renaming cols for ease
  #names(outcomes)[names(outcomes)=="Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"]<-"Hosp_Heart_Attack"
  
  ## Check that state and outcome are valid
  if ((count(subset(outcomes,outcomes$State==state))) < 1)   stop("invalid state")
  if (!(outcome=="heart attack" | outcome=="heart failure" | outcome=="pneumonia"))   stop("invalid outcome")
  
  ## Return hospital name in that state with lowest 30-day death
  state_subset<-subset(outcomes,outcomes$State==state,na.rm=TRUE)
  state_subset<-subset(state_subset[,1:11])
  state_subset[,10]<-NULL
  state_subset[,9]<-NULL
  state_subset[,8]<-NULL
  state_subset[,6]<-NULL
  state_subset[,5]<-NULL
  state_subset[,4]<-NULL
  state_subset[,3]<-NULL
  state_subset[,1]<-NULL
  sorted_outcome <- state_subset[order(as.numeric(state_subset[, 3]), as.character(state_subset[, 1])), ]
  
  return()
  
  ## rate  
} 




