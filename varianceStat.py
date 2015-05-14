#Standard measure of spread series to help Bob learn Python and Statistics
#This function computes the variance for a given set of data
#The variance is the average of the squares of the distance each value is from
#the mean.
def varianceStat():
    data = True
    total = 0.0 #total to compute mean
    s=[]#create a list in order to store values to compute variance
    i=0#count the number of values for the mean
    a=0#count the number of items in the list for variance computation
    squared=0#stores squared values of a data value minus the mean for variance computation
    value=0#stores the value minus the mean
    variance=0#stores the answer we are looking for
    while data:
        try:
            x= float(input("Enter a number to be averaged:"))
            total+=x
            s.append(x)
            i+=1
            if input("Do you have another value to be averaged, Yes or No?") == "No":
               data=False
               mean = total/i
               print("The mean is %d " %mean)
               while a < len(s):
                   value=s[a]-mean
                   squared+=value**2
                   a+=1
                   if a == len(s):
                       variance=squared/float(a-1)
                       print("The variance is ", variance)
        except:
               print("An error occurred: you did not enter a float or string value!")
