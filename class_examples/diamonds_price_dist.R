library(ggplot2)
library(dplyr)

# Preview the data
diamonds
diamonds_subset = sample_n(diamonds, 1000, replace=FALSE)

ggplot(diamonds_subset,aes(x=price)) +
  geom_density(size=2, color='blue',fill='green') + 
  xlab('Probability') +
  ylab('Price in US Dollars')
  

ggsave('diamonds_price_dist.png', height=3, width=5)
