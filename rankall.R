rankall <- function(outcome, num = "best") {
  ## Read outcome data
  outcomes <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  ## Return hospital name in that state with lowest 30-day death
 
  outcomes2 <- outcomes[c(2,7,11,17,23)]
  #state_subset<-subset(outcomes2,outcomes2$State==state,na.rm=TRUE)
  state_subset<-outcomes2
  
  if (outcome=="heart attack"){
    sorted_outcome <- state_subset[order(as.character(state_subset[, 2]),as.numeric(state_subset[, 3] )), ]
    sorted_outcome <-sorted_outcome[c(1,2,3)] 
    state_list<-sorted_outcome[ ! duplicated( sorted_outcome[ c("State") ] ) ,2 ]
    dframe2<-vector()
    for (i in state_list){
      dframe<-subset(sorted_outcome,sorted_outcome$State==i)
      dframe2<-append(dframe2,dframe[num,])
      output <- as.data.frame(matrix(dframe2,length(dframe2)/3,3, byrow = TRUE))
    }
    return(output)
    #return(sorted_outcome[1,1])
  }
  else
    if (outcome=="heart failure"){
      sorted_outcome <- state_subset[order(as.numeric(state_subset[, 4]), as.character(state_subset[, 1])), ]
      return(sorted_outcome)
      #return(sorted_outcome[1,1])
    }
  else 
    if (outcome=="pneumonia"){
      sorted_outcome <- state_subset[order(as.numeric(state_subset[, 5]), as.character(state_subset[, 1])), ]
      return(sorted_outcome)
      #return(sorted_outcome[1,1])
    }
  ## Check that state and outcome are valid
  ## For each state, find the hospital of the given rank
  ## Return a data frame with the hospital names and the
  ## (abbreviated) state name
}