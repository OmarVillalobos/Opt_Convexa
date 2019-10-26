library(ISLR)
library(caret)
library(devtools)
library(glm2)
library(fable)

library(plyr)
library(dplyr)
library(ggplot2)
##################################


df <- Auto

df$year = as.factor(df$year)
df$origin = as.factor(df$origin)
df$cylinders = as.factor(df$cylinders)

ggplot(data = df,
       aes(x = horsepower, y = mpg,
           colour = cylinders)) +
  geom_jitter(aes(size = displacement), alpha = 1) +
  facet_grid(origin ~ year) 
ggplot
