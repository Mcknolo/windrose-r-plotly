


library(shiny)
library(dplyr)
library(plotly)

options(shiny.sanitize.errors = TRUE)

myUrl<-"https://docs.google.com/spreadsheets/d/13Z29i5U6B9geI0OTkJFr0hrkbvropA0JVXnTHVnh62Y/export?format=csv&id"

vientos<-read.csv(url(myUrl), fileEncoding = "UTF-8")