rm(list=ls())
setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/R_code/analise_eps/eps_10_n")
df = read.table("insert_comparisons.txt")
df_m = read.table("insert_n_subarray.txt")
data_insert = unlist(df,use.names = FALSE)
data_n_insert = unlist(df_m,use.names = FALSE)

setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/R_code/analise_eps/eps_20_n")
df = read.table("bubble_comparisons.txt")
df_m = read.table("bubble_n_subarray.txt")
data_bubble = unlist(df,use.names = FALSE)
data_n_bubble = unlist(df_m,use.names = FALSE)


setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/R_code/analise_eps/eps_20_n")
df = read.table("quick_comparisons.txt")
df_m = read.table("quick_n_subarray.txt")
data_quick = unlist(df,use.names = FALSE)
data_n_quick = unlist(df_m,use.names = FALSE)

setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/R_code/analise_eps/eps_20_n")
df = read.table("merge_comparisons.txt")
df_m = read.table("merge_n_subarray.txt")
data_merge = unlist(df,use.names = FALSE)
data_n_merge = unlist(df_m,use.names = FALSE)

di <- mean(data_insert)
db <- mean(data_bubble)
dq <- mean(data_quick)
dm <- mean(data_merge)

dpi = sd(data_n_insert, na.rm=FALSE)
dpb = sd(data_n_bubble, na.rm=FALSE)
dpq = sd(data_n_quick, na.rm=FALSE)
dpm = sd(data_n_merge, na.rm=FALSE)

mi <- mean(data_n_insert)
mb <- mean(data_n_bubble)
mq <- mean(data_n_quick)
mm <- mean(data_n_merge)

