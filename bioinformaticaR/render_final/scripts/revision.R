# Se definen los objetos antes de utilizarlos.
ids <- c("seq_01", "seq_02", "seq_03")
secuencias <- c("ATGCGT", "ACGT", "GGCCAA")
longitudes <- nchar(secuencias)
resultado <- data.frame(id = ids, longitud = longitudes)
print(resultado)
