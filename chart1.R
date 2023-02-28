library(ggplot2)
library(dplyr)

data <- read.csv("/Users/tyler/Desktop/2017-2023-10-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)


materialtypetotal <- data %>% 
  group_by(MaterialType, CheckoutYear) %>% 
  summarise(Checkouts = sum(Checkouts))

chart1 <- ggplot(materialtypetotal, aes(x = CheckoutYear, y = materialtypetotal)) + geom_line() + 
  labs(x = "Checkout Year", y = "Total Checkouts", title = "Material Type Checkouts by Year", color = "Type")
