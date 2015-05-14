        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0

        ## Return a numeric vector of correlations

corr <- function(directory, threshold = 0) {
             x<-list.files(directory, full.names=TRUE)##read all files from dir
             answer<-vector("numeric")
             if(threshold>1041){
                   answer<-append(answer,0)
             } else {
                 for(i in 1:332) { ##loop through number of complete files
                     ncobs<-complete(directory,i) ##compile all complete obs per file
                     nobs<-ncobs$nobs ##store complete obs by file in nobs variable
                     if(nobs>threshold){ ##compare complete files to threshold
                         dirty<-read.csv(x[i]) ##assign obs > threshold to variable
                         clean<-na.omit(dirty)
                         answer<-append(answer,cor(clean$sulfate,clean$nitrate))
                     }##end if   
                 }##end for loop
