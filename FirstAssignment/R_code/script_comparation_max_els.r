#este script da o crescimento de tempo usado para cada algoritmo
rm(list=ls())
setwd("/Users/iroseiro/Desktop/100")
df = read.table("insert_n_subarray.txt")
data = unlist(df,use.names = FALSE)

m1 = mean(data)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("insert_n_subarray.txt")
data2 = unlist(df,use.names = FALSE)

m2 = mean(data2)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("insert_n_subarray.txt")
data3 = unlist(df,use.names = FALSE)

m3 = mean(data3)
datay <- c(m1,m2,m3)
datax <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("quick_n_subarray.txt")
data_q = unlist(df,use.names = FALSE)

m1_q = mean(data_q)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("quick_n_subarray.txt")
data2_q = unlist(df,use.names = FALSE)

m2_q = mean(data2_q)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("quick_n_subarray.txt")
data3_q = unlist(df,use.names = FALSE)

m3_q = mean(data3_q)
datay_q <- c(m1_q,m2_q,m3_q)
datax_q <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("merge_n_subarray.txt")
data_m = unlist(df,use.names = FALSE)

m1_m = mean(data_m)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("merge_n_subarray.txt")
data2_m = unlist(df,use.names = FALSE)

m2_m = mean(data2_m)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("merge_n_subarray.txt")
data3_m = unlist(df,use.names = FALSE)

m3_m = mean(data3_m)
datay_m <- c(m1_m,m2_m,m3_m)
datax_m <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("bubble_n_subarray.txt")
data_b = unlist(df,use.names = FALSE)

m1_b = mean(data_b)
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("bubble_n_subarray.txt")
data2_b = unlist(df,use.names = FALSE)

m2_b = mean(data2_b)
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("bubble_n_subarray.txt")
data3_b = unlist(df,use.names = FALSE)

m3_b = mean(data3_b)
datay_b <- c(m1_b,m2_b,m3_b)
datax_b <- c(100, 1000, 10000)


plot(datax, datay ,type = "o",
col = "red", 
xlab = "Number of elements", 
ylab = "Maximum ordered elements",
ylim= c(0,10000),
main = "Largest sorted subarrays size of Sorting Algorithms")

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


legend(6500, 10000, legend=c("InsertionSort", "QuickSort", "MergeSort", "Bubble Sort"),
       col=c("red", "blue", "darkgreen", "darkorange1"), lty=1, cex=0.8)








#este script da o a percentagem de elementos ordenados de cada algoritmo(media)
rm(list=ls())
setwd("/Users/iroseiro/Desktop/100")
df = read.table("insert_n_subarray.txt")
data = unlist(df,use.names = FALSE)

m1 = mean(data)

p1 = m1/100 * 100
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("insert_n_subarray.txt")
data2 = unlist(df,use.names = FALSE)

m2 = mean(data2)
p2 = m2/1000 * 100
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("insert_n_subarray.txt")
data3 = unlist(df,use.names = FALSE)

m3 = mean(data3)
p3 = m3/1000 * 100
datay <- c(p1,p2,p3)
datax <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("quick_n_subarray.txt")
data_q = unlist(df,use.names = FALSE)

m1_q = mean(data_q)
p1_q = m1_q/100 * 100
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("quick_n_subarray.txt")
data2_q = unlist(df,use.names = FALSE)

m2_q = mean(data2_q)
p2_q = m2_q/1000 * 100
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("quick_n_subarray.txt")
data3_q = unlist(df,use.names = FALSE)

m3_q = mean(data3_q)
p3_q = m3_q/10000 * 100
datay_q <- c(p1_q,p2_q,p3_q)
datax_q <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("merge_n_subarray.txt")
data_m = unlist(df,use.names = FALSE)

m1_m = mean(data_m)
p1_m = m1_m/100 * 100
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("merge_n_subarray.txt")
data2_m = unlist(df,use.names = FALSE)

m2_m = mean(data2_m)
p2_m = m2_m/1000 * 100
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("merge_n_subarray.txt")
data3_m = unlist(df,use.names = FALSE)

m3_m = mean(data3_m)
p3_m = m3_m/10000 * 100
datay_m <- c(p1_m,p2_m,p3_m)
datax_m <- c(100, 1000, 10000)

setwd("/Users/iroseiro/Desktop/100")
df = read.table("bubble_n_subarray.txt")
data_b = unlist(df,use.names = FALSE)

m1_b = mean(data_b)
p1_b = m1_b/100 * 100
setwd("/Users/iroseiro/Desktop/1000")
df = read.table("bubble_n_subarray.txt")
data2_b = unlist(df,use.names = FALSE)

m2_b = mean(data2_b)
p2_b = m2_b/1000 * 100
setwd("/Users/iroseiro/Desktop/10000")
df = read.table("bubble_n_subarray.txt")
data3_b = unlist(df,use.names = FALSE)

m3_b = mean(data3_b)
p3_b = m3_b/10000 * 100
datay_b <- c(p1_b,p2_b,p3_b)
datax_b <- c(100, 1000, 10000)



plot(datax, datay ,type = "o",
col = "red", 
xlab = "Number of elements", 
ylab = "Maximum ordered elements (%)",
ylim= c(0,100),
main = "Largest sorted subarrays size \n of Sorting Algorithms (%)")

points(datax_q, datay_q, col="blue")
lines(datax_q, datay_q, col = "blue", lty=1)

points(datax_m, datay_m, col="darkgreen")
lines(datax_m, datay_m, col = "darkgreen", lty=1)

points(datax_b, datay_b, col="darkorange1")
lines(datax_b, datay_b, col = "darkorange1", lty=1)



text(datax, datay, datay, cex=0.5, pos=1, col="red")
text(datax_q, datay_q, datay_q, cex=0.5, pos=1, col="blue")
text(datax_m, datay_m, datay_m, cex=0.5, pos=3, col="darkgreen")
text(datax_b, datay_b, datay_b, cex=0.5, pos=1, col="darkorange1")


legend(6500, 100, legend=c("InsertionSort", "QuickSort", "MergeSort", "Bubble Sort"),
       col=c("red", "blue", "darkgreen", "darkorange1"), lty=1, cex=0.8)
