### Read in the raw data, assuming we are working in the src directory 

raw_yield_data <- read.csv("data_raw/raw_yield_data.csv") 

### Clean the data by removing rows with NA and where 'Field' == N 

clean_yield_data <-na.omit(raw_yield_data[raw_yield_data$Field!="NA",])

### Write the clean data to disk 

write.csv(clean_yield_data, file = "data_clean/clean_yield_data.csv") 


