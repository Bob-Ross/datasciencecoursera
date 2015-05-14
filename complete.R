  ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
complete <- function(directory, id = 1:332) {
              if(getwd()!="H:/Coursera"){setwd("H:/Coursera")}
              x<-list.files(directory, full.names=TRUE)
              answer<-data.frame()
              for(i in id) {
                     dirty<-read.csv(x[i])##NAs remain; incomplete observations
                     nobs<-sum(complete.cases(dirty))
                     answer<-rbind(answer,nobs)
               }## end loop
               new.answer<-cbind(id,answer)
               colnames(new.answer)<-c("id","nobs")
               new.answer 
}##end
