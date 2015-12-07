get_wavespeed_by_freq <- function(foldername){
  df <- read.csv(paste0(foldername, "/travCheck.dat"), sep="", header=FALSE)
  nozero <- subset(df, df[,3] > 0)
  fac <- as.factor(nozero[,3])
  tab <- sort(table(fac), decreasing=TRUE)
  wave <- subset(tab, tab > 2)

  return(weighted.mean(as.numeric(names(wave)), unname(wave)))
}

delta <- list.files("./", "out-trav-param-delta")
gama  <- list.files("./", "out-trav-param-gama")
nu    <- list.files("./", "out-trav-param-nu")
kappa <- list.files("./", "out-trav-param-kappa")


delta_speed <- unname(sapply(delta, get_wavespeed_by_freq))
gama_speed <- unname(sapply(gama, get_wavespeed_by_freq))
nu_speed <- unname(sapply(nu, get_wavespeed_by_freq))
kappa_speed <- unname(sapply(kappa, get_wavespeed_by_freq))

delta_sub <- gsub(pattern='[^0-9]', replacement="", delta)
delta_param <- as.numeric(delta_sub) * 1e-10
gama_sub <- gsub(pattern='[^0-9]', replacement="", gama)
gama_param <- as.numeric(gama_sub) * 1e-3
nu_sub <- gsub(pattern='[^0-9]', replacement="", nu)
nu_param <- as.numeric(nu_sub) * 1e-2
kappa_sub <- gsub(pattern='[^0-9]', replacement="", kappa)
kappa_param <- as.numeric(kappa_sub) * 1e-4


delta_table <- cbind(delta_param[!is.na(delta_speed)], delta_speed[!is.na(delta_speed)])
gama_table <- cbind(gama_param[!is.na(gama_speed)], gama_speed[!is.na(gama_speed)])
nu_table <- cbind(nu_param[!is.na(nu_speed)], nu_speed[!is.na(nu_speed)])
kappa_table <- cbind(kappa_param[!is.na(kappa_speed)], kappa_speed[!is.na(kappa_speed)])


write.table(delta_table, file="param_delta.dat", quote=FALSE, row.names=FALSE, col.names=FALSE)
write.table(gama_table, file="param_gama.dat", quote=FALSE, row.names=FALSE, col.names=FALSE)
write.table(nu_table, file="param_nu.dat", quote=FALSE, row.names=FALSE, col.names=FALSE)
write.table(kappa_table, file="param_kappa.dat", quote=FALSE, row.names=FALSE, col.names=FALSE)
