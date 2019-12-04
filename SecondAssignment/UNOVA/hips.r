rm(list=ls())
setwd("/Users/iroseiro/Desktop/parametros_base/100")
df_b = read.table("bubble_n_subarray.txt")

setwd("/Users/iroseiro/Desktop/parametros_base/1000")
df_b2 = read.table("bubble_n_subarray.txt")

setwd("/Users/iroseiro/Desktop/parametros_base/10000")
df_b3 = read.table("bubble_n_subarray.txt")


R <- rbind(df_b,df_b2,df_b3)
names(R)[1]<-paste("max_ord")


res <-matrix(1:300);


for (i in 1:100) {
    res[i,1] <- 100
}
for (i in 100:200) {
    res[i,1] <- 1000
}
for (i in 200:300) {
    res[i,1] <- 10000
}

R$n <- res

res <-matrix(1:300);
for (i in 1:300) {
    res[i,1] <- 'B'
}

R$algorithm <- res

#-------------------------------------------------------------------------------------------
setwd("/Users/iroseiro/Desktop/parametros_base/100")
df_b = read.table("quick_n_subarray.txt")

setwd("/Users/iroseiro/Desktop/parametros_base/1000")
df_b2 = read.table("quick_n_subarray.txt")

setwd("/Users/iroseiro/Desktop/parametros_base/10000")
df_b3 = read.table("quick_n_subarray.txt")


R2 <- rbind(df_b,df_b2,df_b3)
names(R2)[1]<-paste("max_ord")


res <-matrix(1:300);


for (i in 1:100) {
    res[i,1] <- 100
}
for (i in 100:200) {
    res[i,1] <- 1000
}
for (i in 200:300) {
    res[i,1] <- 10000
}

R2$n <- res

res <-matrix(1:300);
for (i in 1:300) {
    res[i,1] <- 'Q'
}

R2$algorithm <- res

#-------------------------------------------------------------------------------------------

setwd("/Users/iroseiro/Desktop/parametros_base/100")
df_b = read.table("insert_n_subarray.txt")

setwd("/Users/iroseiro/Desktop/parametros_base/1000")
df_b2 = read.table("insert_n_subarray.txt")

setwd("/Users/iroseiro/Desktop/parametros_base/10000")
df_b3 = read.table("insert_n_subarray.txt")


R3 <- rbind(df_b,df_b2,df_b3)
names(R3)[1]<-paste("max_ord")


res <-matrix(1:300);


for (i in 1:100) {
    res[i,1] <- 100
}
for (i in 100:200) {
    res[i,1] <- 1000
}
for (i in 200:300) {
    res[i,1] <- 10000
}

R3$n <- res

res <-matrix(1:300);
for (i in 1:300) {
    res[i,1] <- 'I'
}

R3$algorithm <- res


#-------------------------------------------------------------------------------------------

setwd("/Users/iroseiro/Desktop/parametros_base/100")
df_b = read.table("merge_n_subarray.txt")

setwd("/Users/iroseiro/Desktop/parametros_base/1000")
df_b2 = read.table("merge_n_subarray.txt")

setwd("/Users/iroseiro/Desktop/parametros_base/10000")
df_b3 = read.table("merge_n_subarray.txt")


R4 <- rbind(df_b,df_b2,df_b3)
names(R4)[1]<-paste("max_ord")


res <-matrix(1:300);


for (i in 1:100) {
    res[i,1] <- 100
}
for (i in 100:200) {
    res[i,1] <- 1000
}
for (i in 200:300) {
    res[i,1] <- 10000
}

R4$n <- res

res <-matrix(1:300);
for (i in 1:300) {
    res[i,1] <- 'M'
}

R4$algorithm <- res



R <- rbind(R, R2, R3, R4)

R


anova2<-aov(max_ord~as.factor(n)*as.factor(algorithm),data=R)
summary(anova2)

write.csv(R, file = "hips_n.csv")
