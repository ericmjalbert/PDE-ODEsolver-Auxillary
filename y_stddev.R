args <- commandArgs(TRUE)
df <- read.csv(args[1], sep="", header=FALSE)
df[, 2] <- as.factor(df[, 2])
stddev <- as.list(by(df[,3], df[,2], sd, simplify=TRUE))
data <- cbind(names(stddev), unlist(stddev, use.names=FALSE))
write.table(data, file = "show_dimension_stddev.dat", quote = FALSE, row.names = FALSE, col.names = FALSE)
            

