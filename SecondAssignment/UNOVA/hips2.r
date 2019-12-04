rm(list=ls())
#data set for max_r = 2n
setwd("/Users/iroseiro/Desktop/max_r/maxr_com_2n/1000")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")


R <- rbind(df_b,df_q,df_m,df_i)
names(R)[1]<-paste("max_ord")


res <-matrix(1:400);
for (i in 1:400) {
    res[i,1] <- "2n"
}

R$max_r <- res

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


#data set for max_r = n
setwd("/Users/iroseiro/Desktop/max_r/maxr_com_n/1000")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")


R2 <- rbind(df_b,df_q,df_m,df_i)
names(R2)[1]<-paste("max_ord")


res <-matrix(1:400);
for (i in 1:400) {
    res[i,1] <- "n"
}

R2$max_r <- res

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

#data set for max_r = n/2
setwd("/Users/iroseiro/Desktop/max_r/maxr_com_n_2/1000")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")


R3 <- rbind(df_b,df_q,df_m,df_i)
names(R3)[1]<-paste("max_ord")


res <-matrix(1:400);
for (i in 1:400) {
    res[i,1] <- "n/2"
}

R3$max_r <- res

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


#data set for max_r = n/4
setwd("/Users/iroseiro/Desktop/max_r/maxr_com_n_4/1000")
df_b = read.table("bubble_n_subarray.txt")
df_q = read.table("quick_n_subarray.txt")
df_m = read.table("merge_n_subarray.txt")
df_i = read.table("insert_n_subarray.txt")


R4 <- rbind(df_b,df_q,df_m,df_i)
names(R4)[1]<-paste("max_ord")


res <-matrix(1:400);
for (i in 1:400) {
    res[i,1] <- "n/4"
}

R4$max_r <- res

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
R4$algorithm <- res


R <- rbind(R, R2, R3, R4)

R


anova2<-aov(max_ord~as.factor(max_r)*as.factor(algorithm),data=R)
summary(anova2)


write.csv(R, file = "hips_maxr.csv")
