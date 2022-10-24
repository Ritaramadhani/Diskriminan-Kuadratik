#Import data
bb<-dapodik
dim(bb)
#02 membuat kelas baru:
#skor quality lebih dari 6 dikelaskan menjadi kelas=1, selainnya dikelaskan menjadi kelas=0
akreditasi <- as.factor(ifelse(bb$`peringkat akreditasi`=="A",1,0))
#03 membagi dataset menjadi dua bagian secara acak
#pemilihan amatan secara acak sbg data training
set.seed (1001)
acak <- sample(1:nrow(bb), 0.8*nrow(bb))
#data training
data.training <- data.frame(akreditasi,bb$jumlah_ruang_kelas, bb$jumlah_guru_honor_sekolah)[acak,]
head(data.training)
colnames(data.training) <- c("akreditasi","jumlah ruang kelas","jumlah guru honor")
head(data.training)
#data testing
data.testing <- data.frame(akreditasi, bb$jumlah_ruang_kelas, bb$jumlah_guru_honor_sekolah)[-acak,]
colnames(data.testing) <- c("akreditasi", "jumlah ruang kelas","jumlah guru honor")
head(data.testing)
# Uji ragam-peragam
bartlett.test(data.training[,-1], data.training[,1], data.training)
qda.fit <- qda(akreditasi~., data = data.training)
qda.pred <- predict(qda.fit, data.testing)$class
#Ukuran kebaikan prediksi
cm1 <- table(data.testing$akreditasi, qda.pred)
acc <- (cm1[1] + cm1[4])/(sum(cm1))
sens <- (cm1[4])/(cm1[2]+cm1[4])
spes <- (cm1[1])/(cm1[1]+cm1[3])
print(list(acc, sens, spes))
