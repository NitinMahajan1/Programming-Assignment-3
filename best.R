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
  outcomes2 <- outcomes[c(2,7,11,17,23)]
  state_subset<-subset(outcomes2,outcomes2$State==state,na.rm=TRUE)

  
if (outcome=="heart attack"){
  sorted_outcome <- state_subset[order(as.numeric(state_subset[, 3]), as.character(state_subset[, 1])), ]
  #return(sorted_outcome)
  return(sorted_outcome[1,1])
}
else
if (outcome=="heart failure"){
  sorted_outcome <- state_subset[order(as.numeric(state_subset[, 4]), as.character(state_subset[, 1])), ]
  #return(sorted_outcome)
  return(sorted_outcome[1,1])
}
else 
if (outcome=="pneumonia"){
  sorted_outcome <- state_subset[order(as.numeric(state_subset[, 5]), as.character(state_subset[, 1])), ]
  #return(sorted_outcome)
  return(sorted_outcome[1,1])
}
  ## rate  
} 




