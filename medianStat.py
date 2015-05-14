#Measure of Central Tendency Series to help Bob learn Python and Statistics
#This function computes the statistical median for values entered...
#The median is the midpoint of the data array. The symbol for the midpoint is MD
def medianStat():
    data = True
    totalList = []
    i=0
    while data:
        try:
            x= float(input("Enter a value to compute the median:"))
            totalList.append(x)
            i+=1
            if input("Do you have another value to enter, Yes or No?") == "No":
               data=False
               #sort the list smallest to largest
               totalList.sort()
               print(totalList) 
               #check to see if it is odd
               if i%2 > 0:
                   #set the halfway point for the median
                   median=i/2
                   print("The median is ",totalList[int(median)])
               #Then it must be an even number of items    
               else:
                    median= i/2
                    averageMedian= totalList[int(median-1)] + totalList[int(median)]
                    print("The median is ", averageMedian/2)
        except:
            print("Error: You did not enter a proper float or string value!")

