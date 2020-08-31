# R code to install packages if not already installed

my_packages = c("randomForest", "data.table")

install_if_missing <- function(pckgs){
    if (pckgs %in% rownames(install.packages()) == FALSE){
        install.packages(pckgs)
    }
}

invisible(sapply(my_packages, install_if_missing))