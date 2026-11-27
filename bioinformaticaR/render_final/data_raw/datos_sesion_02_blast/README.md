# Datos sintéticos — Sesión 2

Todos los datos son **artificiales** y solo sirven para practicar importación y exploración en R. Los resultados BLAST no proceden de una búsqueda real y no permiten conclusiones biológicas.

- `resultados_blast.tsv`: tabla tipo BLAST, con encabezados. `pident` es porcentaje de identidad; `length` es longitud del alineamiento; `evalue` y `bitscore` son métricas del resultado.
- `metadata_secuencias.csv`: información ilustrativa por secuencia; `codigo_muestra` tiene ceros iniciales.
- `secuencias.fasta`: secuencias ficticias.
- `blast_comentarios.tsv`: tabla con dos líneas de comentarios antes del encabezado.
- `blast_separador_incorrecto.csv`: archivo con extensión CSV, pero delimitado por tabulaciones.
- `blast_valores_faltantes.tsv`: copia con un valor de identidad faltante.

Descomprime la carpeta en `data_raw/` dentro del proyecto de RStudio, de modo que los archivos queden en `data_raw/datos_sesion_02_blast/`.
