# Now, let's try an example of a model of geometric population growth. 
#
# We want to project the population forward up to 10 years, assuming a
# geometric growth rate of lambda.
# If we having a starting population of 100, and the population growth
# rate, lambda, is 1.15, how many individuals will there be every year
# over the next ten years?

# This loop is a little different from our previous loops, in that within 
# the loop, it uses the value from the last loop iteration. Therefore in 
# addition to setting up a vector to hold the results, we also need to set the
# first value of the vector, so the first iteration of the loop has something
# to start from.

# set the value for lambda
lambda <- 1.15

# set the starting population size
N0 <- 100

# set up an empty vector to hold output
N <- rep(NA, 10)

# set the first value in our N vector to the starting population size
N[1] <- N0

# now your loop:
# here we are using 't' as our index, for 'time step'. Notice that we are
# starting the loop at time step 2, not 1. We already have a value for N[1].
# The first time it goes through this loop, t is 2, and it will put in a 
# value for N[2] that is equal to lambda*N[1]. And for the next iteration,
# t will be 3, and it will put in a value for N[3] that is equal to lambda*N[2].
# And so on, up to t equals 10.
for(t in 2:10){
   N[t] <- lambda * N[t-1]
}


# Be sure to 
# save this script and type submit() in the console after you make your changes.
