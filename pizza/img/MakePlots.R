library(ggplot2)
library(ggthemr)
library(readr)
library(dplyr)
library(reshape2)

data <- read_csv('data/trends.csv')

melted <- data %>% transform(`data science`=`data science`/max(`data science`),
                   `machine learning`=`machine learning` / max(`machine learning`),
                   `big data` = `big data` / max(`big data`)) %>%
    melt(., id=("Week"))

ggthemr(palette='flat', line_weight = 0.8, text_size = 15)

ggplot(melted, aes(Week, value, color=variable)) +
    geom_line(size=1.0) +
    ggtitle('Weekly Relative Search Volume') +
    xlab('Time') +
    ylab('Volume')

ggsave('ds_trend.png', width=8, height=4.94)
