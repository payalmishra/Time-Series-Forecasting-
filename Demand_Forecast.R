install.packages("forecast",dependencies = TRUE)
library(forecast)


setwd("C:/R")
demand<-read.csv("Forecast.csv")

demand

demand.ts<-ts(demand,frequency = 12, start = c(2015,1))

demand.ts

plot(demand.ts)

demand.forecast<-forecast(demand.ts)

demand.forecast

plot(demand.forecast)


demand.forecast$method

decompose.demand<-decompose(demand.ts)
class(decompose.demand)

plot(decompose.demand)
