test_loop1 <- function() {

  try({
    
    out.correct <- rep(NA, 10)
    
    for(i in 1:10){
      out.correct[i] <- i^2
    }
    
    ok <- identical(out,out.correct)

  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_poploop <- function() {
  
  try({
    
    Nc <- c(100,rep(NA, 9))
    lambda <- 1.15
    
    for(t in 2:10){
      Nc[t] <- lambda * Nc[t-1]
    }
    
    
    ok <- identical(N,Nc)
    
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_poploop2 <- function() {
  
  try({
    
    Nc2 <- c(500,rep(NA, 14))
    lambda <- 0.98
    
    for(t in 2:15){
      Nc2[t] <- lambda * Nc2[t-1]
    }
    
    
    ok <- identical(N,Nc2)
    
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}
