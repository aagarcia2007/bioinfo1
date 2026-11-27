paquetes <- c("readr", "dplyr", "tidyr", "ggplot2", "scales", "knitr", "rmarkdown")
faltan <- paquetes[!paquetes %in% rownames(installed.packages())]
if (length(faltan) > 0) install.packages(faltan)
