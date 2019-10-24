#este script da o crescimento de tempo usado para cada algoritmo
rm(list=ls())
setwd("/Users/iroseiro/Desktop/100")
df = read.table("insert_n_runtime.txt")
data = unlist(df,use.names = FALSE)

m1 = mean(data)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("insert_n_runtime.txt")
data2 = unlist(df,use.names = FALSE)

m2 = mean(data2)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("insert_n_runtime.txt")
data3 = unlist(df,use.names = FALSE)

m3 = mean(data3)
datay <- c(m1,m2,m3)
datax <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("quick_n_runtime.txt")
data_q = unlist(df,use.names = FALSE)

m1_q = mean(data_q)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("quick_n_runtime.txt")
data2_q = unlist(df,use.names = FALSE)

m2_q = mean(data2_q)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("quick_n_runtime.txt")
data3_q = unlist(df,use.names = FALSE)

m3_q = mean(data3_q)
datay_q <- c(m1_q,m2_q,m3_q)
datax_q <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("merge_n_runtime.txt")
data_m = unlist(df,use.names = FALSE)

m1_m = mean(data_m)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("merge_n_runtime.txt")
data2_m = unlist(df,use.names = FALSE)

m2_m = mean(data2_m)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("merge_n_runtime.txt")
data3_m = unlist(df,use.names = FALSE)

m3_m = mean(data3_m)
datay_m <- c(m1_m,m2_m,m3_m)
datax_m <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("bubble_n_runtime.txt")
data_b = unlist(df,use.names = FALSE)

m1_b = mean(data_b)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("bubble_n_runtime.txt")
data2_b = unlist(df,use.names = FALSE)

m2_b = mean(data2_b)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("bubble_n_runtime.txt")
data3_b = unlist(df,use.names = FALSE)

m3_b = mean(data3_b)
datay_b <- c(m1_b,m2_b,m3_b)
datax_b <- c(100, 1000, 10000)


plot(datax, datay ,type = "o",
col = "red", 
xlab = "Number of elements", 
ylab = "Execution Time (ms)",
ylim= c(0,431000),
main = "Execution Time of Sorting Algorithms")

points(datax_q, datay_q, col="blue")
lines(datax_q, datay_q, col = "blue", lty=1)

points(datax_m, datay_m, col="darkgreen")
lines(datax_m, datay_m, col = "darkgreen", lty=1)

points(datax_b, datay_b, col="darkorange1")
lines(datax_b, datay_b, col = "darkorange1", lty=1)

#text(datax, datay, datay, cex=0.5, pos=3, col="red")
#text(datax_q, datay_q, datay_q, cex=0.5, pos=1, col="blue")
#text(datax_m, datay_m, datay_m, cex=0.5, pos=4, col="darkgreen")
#text(datax_b, datay_b, datay_b, cex=0.5, pos=4, col="darkorange1")


legend(1, 430000, legend=c("InsertionSort", "QuickSort", "MergeSort", "Bubble Sort"),
       col=c("red", "blue", "darkgreen", "darkorange1"), lty=1, cex=0.8)






#da oblivious do ultimo valor de bubble sort
rm(list=ls())
setwd("/Users/iroseiro/Desktop/100")
df = read.table("insert_n_runtime.txt")
data = unlist(df,use.names = FALSE)

m1 = mean(data)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("insert_n_runtime.txt")
data2 = unlist(df,use.names = FALSE)

m2 = mean(data2)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("insert_n_runtime.txt")
data3 = unlist(df,use.names = FALSE)

m3 = mean(data3)
datay <- c(m1,m2,m3)
datax <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("quick_n_runtime.txt")
data_q = unlist(df,use.names = FALSE)

m1_q = mean(data_q)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("quick_n_runtime.txt")
data2_q = unlist(df,use.names = FALSE)

m2_q = mean(data2_q)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("quick_n_runtime.txt")
data3_q = unlist(df,use.names = FALSE)

m3_q = mean(data3_q)
datay_q <- c(m1_q,m2_q,m3_q)
datax_q <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("merge_n_runtime.txt")
data_m = unlist(df,use.names = FALSE)

m1_m = mean(data_m)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("merge_n_runtime.txt")
data2_m = unlist(df,use.names = FALSE)

m2_m = mean(data2_m)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("merge_n_runtime.txt")
data3_m = unlist(df,use.names = FALSE)

m3_m = mean(data3_m)
datay_m <- c(m1_m,m2_m,m3_m)
datax_m <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("bubble_n_runtime.txt")
data_b = unlist(df,use.names = FALSE)

m1_b = mean(data_b)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("bubble_n_runtime.txt")
data2_b = unlist(df,use.names = FALSE)

m2_b = mean(data2_b)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("bubble_n_runtime.txt")
data3_b = unlist(df,use.names = FALSE)

m3_b = mean(data3_b)
datay_b <- c(m1_b,m2_b,m3_b)
datax_b <- c(100, 1000, 10000)


plot(datax, datay ,type = "o",
col = "red", 
xlab = "Number of elements", 
ylab = "Execution Time (ms)",
ylim= c(0,20000),
main = "Execution Time of Sorting Algorithms")

points(datax_q, datay_q, col="blue")
lines(datax_q, datay_q, col = "blue", lty=1)

points(datax_m, datay_m, col="darkgreen")
lines(datax_m, datay_m, col = "darkgreen", lty=1)

points(datax_b, datay_b, col="darkorange1")
lines(datax_b, datay_b, col = "darkorange1", lty=1)

#text(datax, datay, datay, cex=0.5, pos=3, col="red")
#text(datax_q, datay_q, datay_q, cex=0.5, pos=1, col="blue")
#text(datax_m, datay_m, datay_m, cex=0.5, pos=4, col="darkgreen")
#text(datax_b, datay_b, datay_b, cex=0.5, pos=4, col="darkorange1")


legend(7000, 20000, legend=c("InsertionSort", "QuickSort", "MergeSort", "Bubble Sort"),
       col=c("red", "blue", "darkgreen", "darkorange1"), lty=1, cex=0.8)


