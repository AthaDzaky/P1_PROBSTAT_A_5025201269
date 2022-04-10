#3a.Peluang bahwa 6 bayi akan lahir dirumah sakit ini besok
dpois(6,4.5)

#3b.Simulasi dan Histogram kelahiran 6 bayi akan lahir dirumah sakit ini selama setahun (n=365)
library(ggplot2)
set.seed(2)

bayi <- data.frame('data' = rpois(365, 4.5))

bayi %>% ggplot() + 
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Jumlah bayi yang lahir per periode',
       y = 'Persentase',
       title = 'Simulasi kelahiran 6 bayi akan lahir dirumah sakit ini dalam setahun dengan Pois(lambda = 4.5)') +
  theme_bw()

bayi %>% dplyr::summarize(enam_bayi= sum(bayi$data == 6) / n())

#3c dan Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
#dari hasil poin a dan b terdapat perbedaan, hasil simulasi menunjukkan bahwa peluang kelahiran 6 bayi akan lahir dirumah sakit ini selama setahun sebesar 0.1150685 sedangkan peluang bahwa 6 bayi akan lahir dirumah sakit ini besok adalah 0.1281201 
lambda = 4.5
varians = lambda
varians
#3d Nilai rataan dan varian dari Distribusi Poisson

