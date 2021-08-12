# You're about to write your first loop! 
#
# This is a simple loop that will creat a vector (out) that will square each
# number from 1 to 10.
# Since R doesn't automatically save what happens in a loop, you need to 
# First create an empty vector to hold the result. It is helpful to make this 
# vector be the same length as your expected result. That way, you can easily
# tell if something went wrong. For example, if the code failed after 5, you
# would see 5 numbers, and 5 NAs on the end.

# create empty vector to hold output
out <- rep(NA, 10)

# now your loop:
# here we are using 'i' as our index. This is commonly used. Think 'i' for
# 'iteration'. 
# We want i to take on the values from 1 to 10 as it moves through the loop.
# And we want it to save the output in the index's spot in the out vector.
for(i in 1:10){
   out[i] <- i^2
}

# Delete the hashtag in front of 'out[i]' to make the loop work. Be sure to 
# save this script and type submit() in the console after you make your changes.
