library(readr)
carpeta <- "data_raw/datos_sesion_02_blast"
rutas <- file.path(carpeta, c("resultados_blast.tsv",
                              "metadata_secuencias.csv", "secuencias.fasta"))
stopifnot(all(file.exists(rutas)))
blast <- read_tsv(rutas[1], show_col_types = FALSE)
metadata <- read_csv(rutas[2], col_types = cols(codigo_muestra = col_character()))
dim(blast)
dim(metadata)
names(blast)
names(metadata)
str(blast)
str(metadata)
unique(blast$query_id)
table(blast$query_id)
blast[blast$pident >= 90, ]
encabezados <- grep("^>", readLines(rutas[3]), value = TRUE)
length(encabezados)
colSums(is.na(blast))
colSums(is.na(metadata))
# Los resultados BLAST tienen varias filas por consulta.
# Los códigos de muestra son identificadores y conservan sus ceros.
# Cada encabezado del FASTA marca el inicio de una secuencia.
