#1a Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
#sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
dgeom(3, 0.2)

#1b mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
#geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
mean(rgeom(10000,0.2)==3)

#1c Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
#dapat disimpulkan bahwa hasil dari variabel tetap dan variabel acak berbeda . 
#variabel tetap pada 1a diperoleh hasil 0.1024 sedangkan variabel random pada 1b diperoleh hasul 0.0093

#1d Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
library(dplyr)
library(ggplot2)
#library(scales)

data.frame(heads = 0:10, prob = dgeom(x = 0:10, prob = 0.2)) %>%
  mutate(Heads = ifelse(heads == 4, "4", "other")) %>%
  ggplot(aes(x = factor(heads), y = prob, fill = Heads)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,4), y = prob),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 gagal sebelum sukses pertama.",
       subtitle = "b(10,0.2)",
       x = "3 gagal sebelum sukses pertama",
       y = "Persentase Peluang(y)")

#1e Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
rataan=(1/p)
rataan

varians=(1-p)/p^2
varians
