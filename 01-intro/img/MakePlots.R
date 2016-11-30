library(ggplot2)
library(ggthemr)
library(readr)
library(lubridate)

data <- read_csv('data/google_trends_bi_vs_ds.csv')

head(data)

ggthemr(palette='flat', line_weight = 0.8, text_size = 15)

ggplot(data, aes(`Week`, `data science: (Worldwide)`)) +
    geom_line(size=1.0)

ggsave('ds_trend.png', width=8, height=4.94)
