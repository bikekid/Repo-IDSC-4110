
#This is a fucntion used to create velocity. First example of class.  

velocity <- function(h, v){
  t <- 3
  finHeight <- ((-16) * (t ** 2) + (v * t) + h)
  return (finHeight)
}

#Fruits.csv example
# Need to copy everything as it is and replace "" and 's

fruits <- function(){
  fruits_csv <- read.csv("C:/Users/ethan/Repo-IDSC-4110/Class 2/fruits.csv", header =TRUE, sep = ',')
 
  
  # .dim(): shows the row count and column count
  # .summary(): descriptive statistics on columns
  # .colnames(): shows the name of each column
  # .head(): shows the first 6 rows .tail(): shows the last 6 rows
  # .View(): shows all of the data
  
  dim(fruits_csv)
  summary(fruits_csv)
  colnames(fruits_csv)
  head(fruits_csv)
  tail(fruits_csv)
  View(fruits_csv)
  
  #fruits_csv [3,] That retrives 3rd row
  #fruits_csv [3,3] That gives 3rd row 3rd column
  #fruits_csv [,3] Gives only 3rd column
  
  #You can store certain columns as vectors 
  #fruits[c(3,5,6),] returns 3rd, 5th, 6th row
  #fruits [1:7,names(fruits_csv) %in% c("Revenue", "Company)] 
    # *This returns the data in the first 7 rows with only company and revenue*
  
  #median(mydata[which(mydata$colname1==TRUE),"colname2"])
    # Median (and mean, for the curious) are functions
    # in R.R knows to order the list of values before
    # taking the median ???-The underlined section is 
    # choosing which rows to use."Only want the rows
    # where the values for the column are TRUE"
    # -The italicized section is choosing which column (list) 
    # to show/input into the outside function.
    # "Only want the colname2 column"
  
  return (fruits_csv)
}
