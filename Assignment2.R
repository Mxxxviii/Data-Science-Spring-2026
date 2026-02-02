micaiah young, covid correlation test, febuary 1

library(ggpubr)
file_path <- file.choose()
covid_data <- read.csv(file_path, stringsAsFactors = FALSE)
ggscatter(covid_data, x = "Confirmed", y = "Deaths",
          add = "reg.line", conf.int = TRUE,
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Confirmed Cases", ylab = "Deaths", 
          color = "blue", size = 3)
          res_pearson <- cor.test(covid_data$Confirmed, covid_data$Deaths, method = "pearson"); res_pearson
res_spearman <- cor.test(covid_data$Confirmed, covid_data$Deaths, method = "spearman"); res_spearman

Spearman's rank correlation rho

data:  covid_data$Confirmed and covid_data$Deaths
S = 21677, p-value = 5.755e-10
alternative hypothesis: true rho is not equal to 0
sample estimates:
      rho 
0.6514682 