library(ggplot2)
library(gganimate)
library(av)
library(gifski)
library(gapminder)
library(dplyr)


theme_set(theme_bw())

###### 1) transition_time

head(gapminder)

 p <- ggplot(data = gapminder,
             aes(x = gdpPercap, y = lifeExp, size=pop, colour = continent)) +
    geom_point(show.legend = FALSE, alpha = 0.7)
labs(x= "GDP per capita", y="Life Expectancy")
 
 p
 
 p + transition_time(year) +
   labs(title = "year: {frame_time}")

 
 
 
 