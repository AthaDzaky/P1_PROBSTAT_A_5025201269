#1a Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
#sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
dgeom(3, 0.2)

#1b mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
#geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
mean(rgeom(10000,0.2)==3)

#1c Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

#1d Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
set.seed(0)
hist(rgeom(n,p),main="Histogram Binomial Sembuh Covid")

#1e Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
rataan=(1/p)
rataan

varians=(1-p)/p^2
varians
