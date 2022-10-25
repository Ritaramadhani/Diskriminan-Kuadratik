# Diskriminan Kuadratik
Asumsi pada analisis diskriminan menurut Supranto (2004) adalah variabel bebas harus berdistribusi normal dan matriks peragam dari semua variabel independen (bebas) 
adalah sama. Analisis diskriminan bertujuan untuk membentuk fungsi diskriminan yang mampu membedakan kelompok. Analisis ini dilakukan berdasarkan suatu perhitungan 
statistik terhadap objek-objek yang telah diketahui dengan jelas pengelompokannya. Pada analisis diskriminan, ada asumsi yang harus dipenuhi yaitu data berdistribusi normal dan matriks varian kovarian dari populasi adalah sama. Namun terkadang ditemukan matriks varian kovarians tidak sama. Jika asumsi kesamaan matriks varians kovarian ditolak, dapat digunakan fungsi diskriminan kuadratik untuk fungsi klasifikasi (Sharma, 1996). Uji yang digunakan untuk mengetahui kesamaan matriks varians kovarians adalah uji Box’s M. Prosedur pada uji Box’s M yaitu menggunakan pendekatan sebaran Chi-square.

# Langkah Analisis
Berikut adalah prosedur analisis dengan menggunakan metode diskriminan linear dengan menggunkan aplikasi RStudio
1) Import data
2) Membuat kelas baru
3) Membagi dataset menjadi dua bagian secara acak
4) Bentuk data training
5) Bentuk data testing
6) Uji Ragam-peragam
7) Uji prediksi 
8) Uji kebaikan prediksi

# Interpretasi Hasil
Pada tahap ini, adapun software yang digunakan untuk menganalisis pemodelan algoritma mengenai masalah prediksi dengan tipe klasifikasi yaitu dengan menggunakan
software R, dimana analisis yang digunakan adalah  Analisis Diskriminan Kuadratik (QDA). Dimana, akan dilakukan prediksi menggunakan data testing. Ukuran kebaikan model yang digunakan untuk mengevaluasi hasil prediksi adalah nilai akurasi, sensitivitas dan spesifisitas. Adapun nilai dari akurasi,sensitivitas dan spesifisitas dari ketiga metode sebagai berikut:
- Akurasi
Tingkat ketepatan model dalam memprediksi akreditas pada data testing 
sebesar 0.7737424
- Sensitifitas
Tingkat ketepatan dalam memprediksi akreditas A sebesar 0.4903186
- Spesifisitas
Tingkat ketepatan dalam memprediksi akreditas selain A sebesar 0.9159875
![image](https://user-images.githubusercontent.com/116243989/197654072-24b5e1d1-8a4e-411b-b40d-4d034803052b.png)
