#bloxplot creation - 100 elements (maxr_com_n_4)
rm(list=ls())
setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/novo_eps/eps_20_n")
df_b = read.table("bubble_n_subarray.txt")
data_used_b = unlist(df_b,use.names = FALSE)
data_used_b
a <-table(data_used_b)
a
m_b = mean(data_used_b)
dp_b = sd(data_used_b, na.rm=FALSE)
#m
#dp

df_q = read.table("quick_n_subarray.txt")
data_used_q = unlist(df_q,use.names = FALSE)
data_used_q
a <-table(data_used_q)
a
m_q = mean(data_used_q)
dp_q = sd(data_used_q, na.rm=FALSE)

df_m = read.table("merge_n_subarray.txt")
data_used_m = unlist(df_m,use.names = FALSE)
data_used_m
a <-table(data_used_m)
a
m_m = mean(data_used_m)
dp_m = sd(data_used_m, na.rm=FALSE)

df_i = read.table("insert_n_subarray.txt")
data_used_i = unlist(df_i,use.names = FALSE)
data_used_i
a <-table(data_used_i)
a
m_i = mean(data_used_i)
dp_i = sd(data_used_i, na.rm=FALSE)

mean_vector<- c(m_b, m_q, m_m, m_i)
mean_vector

dp_vector<- c(dp_b, dp_q, dp_m, dp_i)
dp_vector



pdf("boxplot_1000_20_eps.pdf")
boxplot(data_used_b, data_used_q, data_used_m, data_used_i,
names = c("BubbleSort", "QuickSort", "MergeSort", "InsertionSort"),
col = c ("powderblue", "palegreen", "pink", "lightsalmon"),
main="Largest sorted subsequence size \n (1000 elements)"
)
points(mean_vector, pch = 20)

grid()
dev.off()