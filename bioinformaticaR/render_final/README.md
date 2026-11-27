# Reporte de ejercicios de Introducción a R (temas 3–10)

Proyecto de Bioinformática I con ejercicios de los temas 3 a 10 del curso de ENES Juriquilla, UNAM. La configuración sigue el tema 11 del curso.

## Contenido

- reporte.qmd: texto, ejercicios, código ejecutable e interpretaciones.
- _quarto.yml: configuración HTML, índice, código plegable, recursos integrados y salida en docs/.
- estilos.scss: colores y tipografía del reporte.
- reporte_bioinfo.Rproj: archivo para abrir el proyecto en RStudio.
- scripts/: instalación de paquetes y scripts solicitados por los temas 6 y 7.
- data_raw/: datos del curso (BLAST, expresión génica, rizosfera).
- results/: tablas procesadas.
- figures/: gráficas de composición.
- docs/index.html: HTML de vista previa independiente, que se reemplaza al renderizar Quarto.

## Reproducir

1. Descomprime el ZIP y abre reporte_bioinfo.Rproj en RStudio.
2. Asegúrate de que R, RStudio y Quarto estén instalados.
3. Desde la consola de R, ejecuta source("scripts/00_paquetes.R").
4. Reinicia R (Session > Restart R).
5. En la terminal del proyecto, ejecuta quarto render reporte.qmd (o usa Render en RStudio).
6. Abre docs/index.html.

No se requiere kableExtra ni paletteer: las tablas usan knitr::kable y las paletas usan grDevices, por lo que se evitan dependencias adicionales.

Nota de verificación: en el entorno utilizado para preparar los archivos no estaban instalados R ni Quarto. El HTML incluido es una vista previa independiente construida con Pandoc y resultados calculados con Python. Los datos de expresión se reconstruyeron de los 240 registros visibles del CSV original; los ZIP de BLAST y rizosfera se descargaron directamente del curso. El QMD contiene el código R completo. El HTML definitivo y la información de sesión se generan al renderizarlo en RStudio; las tablas y figuras se sobrescriben con los resultados de R.

## Publicar en GitHub Pages

Para un repositorio dedicado a este proyecto, sube la carpeta completa, activa Settings > Pages > Deploy from a branch > main > /docs y guarda. El enlace público abrirá docs/index.html. Si lo integras a un repositorio ya publicado desde la raíz, conserva su configuración y usa la ruta relativa correspondiente a docs/index.html.

Antes de publicar, revisa las licencias de los datos y evita subir archivos privados.

## Fuente

Curso Introducción a R para Bioinformática I, Haydeé Peruyero, ENES Juriquilla, UNAM:
https://cursosenesjuriquilla.github.io/Intro_to_R_Bioinfo_2027-1/index.html

Tema 11:
https://cursosenesjuriquilla.github.io/Intro_to_R_Bioinfo_2027-1/parte11.html
