#This file takes a 'directory', a type of pollutant (either nitrate or sulfate),
#and returns the pollutantmean for both nitrate and sulfate for each monitoring
#station...


        pollutantmean <- function(directory, pollutant, id = 1:332) {
               if(getwd()!="H:/Coursera"){setwd("H:/Coursera")}
               x<-list.files(directory, full.names=TRUE)
               answer<-vector("integer")
               ##loop<-length(id)
               for(i in id) {
                        dirty<-read.csv(x[i])
                        clean<-na.omit(dirty)                       
               if(pollutant == "sulfate") {
                        answer<-append(answer,clean$sulfate)
               } else {
                        answer<-append(answer,clean$nitrate)
               }##end if else
               }##end for
               round(mean(answer),3)
          }##end function
