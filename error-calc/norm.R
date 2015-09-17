dat_files <- list.files(pattern = "*.dat")
no_extens <- substr(dat_files,1,nchar(dat_files) - 4)
ordered <- as.character(sort(as.numeric(no_extens)))
clean_list <- paste(ordered, ".dat", sep="")

l1 <- numeric()
l2 <- numeric()
li <- numeric()

for(i in length(clean_list)-1) {
  df1_dat <- clean_list[i]
  df2_dat <- clean_list[i+1]

  df1 <- read.csv(df1_dat, sep="", header=FALSE)
  df2 <- read.csv(df2_dat, sep="", header=FALSE)
  
  df2 <- df2[seq(1, nrow(df2), by = 2), ]
  
  l1 <- c(l1, sum(abs(df2[,2] - df1[,2])))
  l2 <- c(l2, sqrt(sum(df2[,2]  - df1[,2])^2))
  li <- c(li, max(abs(df2[,2] - df1[,2])))
}

data.frame(l1_norm = l1, l2_norm = l2, l_inf_norm = li, row.names = clean_list[-length(clean_list)])


