rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
  ## Check that state and outcome are valid
  source("best.R")
  sorted_outcome<-best(state,outcome)
  
  ## Return hospital name in that state with the given rank
  
  if (num=="best"){
    return(sorted_outcome[1,1])
  }
  else 
  
    if(num=="worst"){
      sorted_outcome[sorted_outcome=="Not Available"]<- NA
      sorted_outcome<-sorted_outcome[complete.cases(sorted_outcome),]
      x<-dim(sorted_outcome)
      y<-x[1]
      return(sorted_outcome[y,1])
      
    }
    else
      if(num=="check"){
        return(sorted_outcome)
      }
  {
    num<- as.numeric(num)
    return(sorted_outcome[num,1])
  }  
    
  ## 30-day death rate
}