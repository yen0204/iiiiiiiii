
flights <- readRDS("data/flights_week10.rds")

flightsData <- flights$data[[1]]$data_frame

dplyr::glimpse(flightsData)

# How many departure time zone

flightsData$DepartureTimeZone |>
  table() |>
  sort(decreasing = T) -> tb_departureTimeZone

flights$dataSummary$DeapartureTimeZone <- tb_departureTimeZone

saveRDS(flights, file="data/flights_week10_after.rds")

length(tb_departureTimeZone)

# Get unique time zones
unique_time_zones <- unique(flightsData$DepartureTimeZone)

# Count the number of unique time zones
num_time_zones <- length(unique_time_zones)

# Display the number of time zones
cat("Number of time zones:", num_time_zones, "\n")

# Count observations per time zone
observations_per_time_zone <- table(flightsData$DepartureTimeZone)

# Display observations per time zone
cat("Observations per time zone:\n")
print(observations_per_time_zone)

## Split data frame ----

# 3. parse time with time zone
## split flightsData according to its timezone
flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData

x =1

split_flightsData[[x]] |> dplyr::glimpse()
split_flightsData[[x]] |> View()

DepartureTime <-
  lubridate::ymd_hm(
    split_flightsData[[x]]$DepartureTime,
    tz = split_flightsData[[x]]$DepartureTimeZone[[1]]
  )

split_flightsData[[x]] |> dplyr::glimpse()

## steps summary

flightsData <- flights$data[[1]]$data_frame

flightsData |> split(flightsData$DepartureTimeZone) -> split_flightsData

# in dplyr

flightsData |> dplyr::group_by(DepartureTimeZone) |>
  
  # for each sub data frame
  .x=1 # say the first one

split_flightsData[[.x]]$DepartureTime <-
  lubridate::ymd_hm(
    split_flightsData[[.x]]$DepartureTime,
    tz = split_flightsData[[.x]]$DepartureTimeZone[[1]])

split_flightsData[[,x]] |>
  dplyr::mutate(
    DepartureTime =
      lubridate::ymd_hm(
        split_flightsData[[.x]]$DepartureTime,
        tz = split_flightsData[[.x]]$DepartureTimeZone[[1]])
  )

# for every x
flightsData |>
  dplyr::group_by(DepartureTimeZone) |> # split and do the following on each sub data frame
  dplyr::mutate(
    DepartureTime =
      lubridate::ymd_hm(
        DepartureTime,
        tz = DepartureTimeZone[[1]]) # parse time
  ) |>
  dplyr::ungroup() -> # unsplit the data frame
  flightsData

flights$data[[1]]$data_frame <- flightsData

saveRDS(flights, file="data/flights_week11_.rds")

##　complete steps
flightsData |>
  split(flightsData$AirlineID) |> split_dt

flightsData |>
  dplyr::group_by(AirlineID) |>
  dplyr::mutate(
    
  )

