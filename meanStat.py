#Measure of Central Tendency Series to help Bob learn Python and Statistics
#This function computes the statistical mean for values entered...
#The mean is the sum of the values divided by the total number of values.
def meanStat():
    data = True
    total = 0.0
    i=0
    while data:
        try:
            x= float(input("Enter a number to be averaged:"))
            total+=x
            i+=1
            if input("Do you have another value to be averaged, Yes or No?") == "No":
               data=False
               mean = total/i
               print("The mean is %d " %mean)
        except:
               print("An error occurred: you did not enter a float or string value!")
            

