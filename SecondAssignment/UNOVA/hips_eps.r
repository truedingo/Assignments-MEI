rm(list=ls())
#data set for eps = 1%
setwd("/Users/iroseiro/Desktop/eps/eps_1_n/")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")


R <- rbind(df_b,df_q,df_m,df_i)
names(R)[1]<-paste("max_ord")


res <-matrix(1:400);
for (i in 1:400) {
    res[i,1] <- "1"
}

R$eps <- res

res <-matrix(1:400);

for (i in 1:100) {
    res[i,1] <- 'B'
}
for (i in 100:200) {
    res[i,1] <- 'Q'
}
for (i in 200:300) {
    res[i,1] <- 'M'
}
for (i in 300:400) {
    res[i,1] <- 'I'
}
R$algorithm <- res


#data set for eps = 10%
setwd("/Users/iroseiro/Desktop/eps/eps_10_n/")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")


R2 <- rbind(df_b,df_q,df_m,df_i)
names(R2)[1]<-paste("max_ord")


res <-matrix(1:400);
for (i in 1:400) {
    res[i,1] <- "10"
}

R2$eps <- res

res <-matrix(1:400);

for (i in 1:100) {
    res[i,1] <- 'B'
}
for (i in 100:200) {
    res[i,1] <- 'Q'
}
for (i in 200:300) {
    res[i,1] <- 'M'
}
for (i in 300:400) {
    res[i,1] <- 'I'
}
R2$algorithm <- res


#data set for eps = 20%
setwd("/Users/iroseiro/Desktop/eps/eps_20_n/")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")


R3 <- rbind(df_b,df_q,df_m,df_i)
names(R3)[1]<-paste("max_ord")


res <-matrix(1:400);
for (i in 1:400) {
    res[i,1] <- "20"
}

R3$eps <- res

res <-matrix(1:400);

for (i in 1:100) {
    res[i,1] <- 'B'
}
for (i in 100:200) {
    res[i,1] <- 'Q'
}
for (i in 200:300) {
    res[i,1] <- 'M'
}
for (i in 300:400) {
    res[i,1] <- 'I'
}
R3$algorithm <- res


R <- rbind(R, R2, R3)

anova2<-aov(max_ord~as.factor(eps)*as.factor(algorithm),data=R)
summary(anova2)

write.csv(R, file = "hips_eps.csv")
