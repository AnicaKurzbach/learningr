
weight_kilo<-10
#comment:use alt-minus (-) to make <-
weight_kilo

weight_kilo
#vectors: character
c("a","b")
#numeric
c(1,2)
#logic
c(TRUE, FALSE)

#data frame
head(iris)

colnames(iris)
str(iris)
summary(iris)

# Exercise ----------------------------------------------------------------

# Object names
day_one
T <- TRUE
c <- 9
mean <- function(x)
  sum(x)

# Spacing
x[, 1]
mean (x, na.rm = TRUE)
function (x) {
}
function(x) {
}
height <- feet * 12 + inches
mean(x, na.rm = 10)
sqrt(x ^ 2 + y ^ 2)
df$z
x <- 1:10

# Indenting
if (y < 0 && debug)
  message("Y is negative")
x(, 1)

sd

# Function ----------------------------------------------------------------

sd
lm
add_two <- function(x, y){
  added <- x+y
  return(added)
}
add_three <- function(x, y, z){
  added <- x+y+z
  return(added)
}
add_two(y=2, x=1)
add_three(x=1, y=2, z=-1)
library(tidyverse)
source(here::here("R/package-loading.R"))

# Save data ---------------------------------------------------------------

write_csv(iris, here::("data/iris.csv"))
write_csv(iris, here::here("data/iris.csv"))
imported_iris <- read_csv(here::here("data/iris.csv"))
glimpse(imported_iris)
