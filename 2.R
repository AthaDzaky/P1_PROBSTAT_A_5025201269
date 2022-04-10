#2.Terdapat 20 pasien menderita Covid-19 dengan peluang sembuh 0.2 tentukan:
#a. Peluang terdapat 4 pasien yang sembuh 
  dbinom(4,20,0.2)

#b. Histogram berdasarkan kasus tersebut 
  library(dplyr)
  library(ggplot2)
  #library(scales)
  
  data.frame(heads = 0:20, prob = dbinom(x = 0:20, size = 20, prob = 0.2)) %>%
    mutate(Heads = ifelse(heads == 4, "4", "other")) %>%
    ggplot(aes(x = factor(heads), y = prob, fill = Heads)) +
    geom_col() +
    geom_text(
      aes(label = round(prob,4), y = prob),
      position = position_dodge(0.9),
      size = 3,
      vjust = 0
    ) +
    labs(title = "Probability of X = 4 sembuh.",
         subtitle = "b(20,0.2)",
         x = "Sembuh (x)",
         y = "Persentase Peluang(y)")
 
#c.Nilai rataan dan varian dari Distribusi Binomial
  #rataan
  n=20
  p=0.2
  rataan=n*p
  rataan
  
  #varians
  n=20
  p=0.2
  q=0.8
  varian=n*p*q
  varian
  
  
  
