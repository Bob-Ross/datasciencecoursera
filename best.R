##Read outcome data

##Check that state and outcome are valid

##Return hospital name in that state with lowest 30-day death rate

best<-function(state,outcome){
     oocm<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
     ocanswer<-data.frame()
     if(outcome=="heart attack"){
            ##assign column # for heart attack to oc
            ocanswer<-rbind(oocm[ ,11])
     }
     if(outcome=="heart failure") {
            ##assign column # for heart failure to oc
            ocanswer<-rbind(oocm[ ,17])
     }
     if(outcome=="pnuemonia") {
            oc<-23##assign column # for pneumonia to oc
            ocanswer<-rbind(oocm[ ,23])
     }
     ocanswer     
}
