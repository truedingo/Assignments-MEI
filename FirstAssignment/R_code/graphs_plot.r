rm(list=ls())
setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/parametros_base/100")
df = read.table("insert_n_subarray.txt")
data_insert = unlist(df,use.names = FALSE)

setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/parametros_base/100")
df = read.table("bubble_n_subarray.txt")
data_bubble = unlist(df,use.names = FALSE)

setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/parametros_base/100")
df = read.table("quick_n_subarray.txt")
data_quick = unlist(df,use.names = FALSE)

setwd("/Users/dingo/Desktop/Mestrado/MEI/Assignments-MEI/FirstAssignment/sorting/testes/parametros_base/100")
df = read.table("merge_n_subarray.txt")
data_merge = unlist(df,use.names = FALSE)

datax <- 1:100
data_bubbley <- c(data_bubble)
data_quicky <- c(data_quick)
data_inserty <- c(data_insert)
data_mergey <- c(data_merge)
datax <- c(datax)



plot(datax, data_bubbley , type = "l",
col = "red", 
xlab = "Number of elements", 
ylab = "Maximum ordered elements",
ylim= c(0,100),
main = "Largest sorted subarrays size of Sorting Algorithms")


lines(datax, data_inserty, col = "blue", lty=1)


lines(datax, data_quicky, col = "green", lty=1)


lines(datax, data_mergey, col = "yellow", lty=1)