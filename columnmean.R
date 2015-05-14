##function that takes a matrix as an argument and returns the mean of each
##column; this function involves using a for loop
columnmean <- function(y, removeNA = TRUE) {
            nc <- ncol(y) ##calculates the total number of columns
            means <- numeric(nc) ##empty vector equal the number of columns
            for(i in 1:nc) {
			means[i] <- mean(y[,i], na.rm = removeNA) ##assign the mean of each column of the vector y
		}
		means ##return the vector means
}
