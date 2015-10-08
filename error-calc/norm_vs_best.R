# This function takes two simulation data and calculates their l1,l2,linf norm
calc_norm <- function(df1_dat, df2_dat){
  df1 <- read.csv(df1_dat, sep="", header=FALSE)
  df2 <- read.csv(df2_dat, sep="", header=FALSE)

  if (length(names(df1)) == 3) {
    df2 <- df2[ df2[,1] %in% df1[,1], ]
    l1 <- sum( abs(df2[,2] - df1[,2]) ) / nrow(df2)
    l2 <- sqrt( sum( (df2[,2] - df1[,2])^2 ) ) / nrow(df2)
    li <- max( abs(df2[,2] - df1[,2]) )
  }
  else {
    df2 <- df2[ df2[,1] %in% df1[,1] & df2[,2] %in% df1[,2], ]
    l1 <- sum( abs(df2[,3] - df1[,3]) ) / nrow(df2)
    l2 <- sqrt( sum( (df2[,3] - df1[,3])^2 ) ) / nrow(df2)
    li <- max( abs(df2[,3] - df1[,3]) )
  }

  return(c(l1, l2, li))
}

# Get the list of simulation data files
dat_files <- list.files(pattern = "*.tmp")
no_extens <- substr(dat_files,1,nchar(dat_files) - 4)
ordered <- as.character(sort(as.numeric(no_extens)))
clean_list <- paste(ordered, ".tmp", sep="")

# Create dataframe that holds the pairs of dat files in column-wise-pairs. 
n <- length(clean_list)
pair1 <- clean_list
pair2 <- rep(clean_list[n], n) # Just the last element
df <- data.frame(pair1, pair2)

# Calculate normed error and convert to dataframe
norm_matrix <- apply(df, MARGIN=1, FUN=function(x) calc_norm(x[1], x[2]))
results <- as.data.frame(t(norm_matrix), row.names = pair1) 
names(results) <- c("l1", "l2", "linf") 

# Write to file
write.table(results, file = "results_norm.dat", quote = FALSE, row.names = FALSE, col.names = FALSE)
            

