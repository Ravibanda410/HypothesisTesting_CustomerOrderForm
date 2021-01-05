# Load the Dataset
install.packages("readxl")
library(readxl)


#BP:find out whether the defective percentage varies by centre.
#Ho= % of defective of all countries are equal
#Ha =at lest one defective % is not equal


cof<-read_excel(file.choose()) # customer_order(unstacked).xlsx
View(cof) # countries are in their own columns; so we need to stack the data 
stacked_cof<-stack(cof)
attach(stacked_cof)
View(stacked_cof)
table(stacked_cof$ind,stacked_cof$values)
chisq.test(table(stacked_cof$ind,stacked_cof$values))
# p-value = 0.2771 > 0.05 accept null hypothesis 
#i.e percentage defective in all countries are equal 
#inferences : as defective percentage is same in all countries there is no need of any action 






