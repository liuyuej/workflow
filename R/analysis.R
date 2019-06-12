### Load clean data, assuming we are in the src directory 

clean_yield_data <- read.csv("data_clean/clean_yield_data.csv") 

### Compute the analysis of variance: is there significant difference in tomato yield in the different fields? 

aov_Weight_Field <- aov (data = clean_yield_data, Weight ~ Field) 

### Comparison of only two groups 

### t.test(Weight~Field,data = clean_yield_data,subset=Field%in%c("C","O")) 

###Summary of the analysis 

summary(aov_Weight_Field) 

### Write test result to plain text file 

capture.output(aov_Weight_Field, file = "results/test_results.txt") 

