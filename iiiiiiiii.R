# To ensure Chinese characters are displayed correctly
options(encoding = "UTF-8")
Sys.setlocale("LC_CTYPE", "en_US.UTF-8")

flights = readRDS("data/flights.rds")

str(flights)
flightsData <- flights$data[[1]]$data_frame

# Consider the following data frame of student grades

grades <- data.frame(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
)

# it is an extended class out of the following list

grades_list <- list(
  student = c("Alice", "Bob", "Charlie", "David", "Eve"),
  midterm = c(95, 80, 70, 60, 75),
  final = c(90, 85, 75, 95, 80)
  
  grades[["student"]]
  grades[["midterm"]]
  
  grades
  midterm
  
  grades[, "student"] # retrieve student column
  grades[, c("student", "midterm")] # retrieve student and midterm columns
  grades[c(1,3), "student"] # retrieve student column for rows 1 and 3
  grades[c(1,3), c("student", "midterm")] # retrieve student and midterm columns for rows 1 and 3
  dplyr::glimpse(flights$data[[1]]$data_frame)
  
  # check column names 
  names(flightsData)
  
  class(flightsData$AirlineID)
  class(flightsData$ScheduleStartDate)
  
  householdIncomes <- c(
    "middle income", "high income", "middle income", "low income",
    "middle income", "high income", "high income", "low income",
    "high income", "middle income", "high income", "middle income"
  )
  # we want it to be factor class
  class(flightsData$AirlineID)
  
  # parse to factor
  factor( an object of class character)
  
  # parse to ordered factor
  ordered( an object of class character, levels = a vector of levels from smallest to largest)
  
  fct_householdIncome <- factor(householdIncomes)
  
  ord_fct_householdIncome <- ordered(householdIncomes, levels = c("low income", "middle income", "high income"))
  
  # Counts on each level
  
  table(fct_householdIncome)
  table(ord_fct_householdIncome)
  
  # Proportion on each level
  tb_fct_householdIncome <- table(fct_householdIncome)
  prop.table(tb_fct_householdIncome)
  
  tb_ord_fct_householdIncome <- table(ord_fct_householdIncome)
  prop.table(tb_ord_fct_householdIncome)
  
  levels(fct_householdIncome)
  
  table(fct_householdIncome)
  
  fct_householdIncome2 <- 
    factor(householdIncomes, 
           levels = c("high income", "middle income", "low income"))
  
  levels(fct_householdIncome2)
  
  table(fct_householdIncome2)
  
  levels(ord_fct_householdIncome)
  
  # Avoid comparing two strings with <, >, <=, >=
  "high income" < "middle income"
  
  # values in ordered factor can be compared to a level string
  head(ord_fct_householdIncome)
  head(ord_fct_householdIncome) < "high income"
  
  flightsData
  AirlineID)

class(flightsData$AirlineID)

tb_airlineID <-  table(flightsData$AirlineID)
tb_airlineID

typeof(tb_airlineID)

sort(tb_airlineID)

sort(tb_airlineID, decreasing = TRUE)


flights$data[[1]]
data[[1]]
airlineID$frequency_count <- sort(tb_airlineID, decreasing = TRUE)

saveRDS(flights, "data/flights.rds")
  
