#!/usr/bin/env bash
# uso: ./top5.sh consultas.faa base_blast
# Corre blastp contra una base local y reporta los 5 mejores hits
# (por bitscore) de cada consulta, como tabla separada por tabs.

if [ $# -ne 2 ]; then
  echo "uso: $0 consultas.faa base_blast"
  exit 1
fi

consultas=$1
base=$2
salida=$(basename ${consultas%.*})_vs_${base}.tsv

blastp -query $consultas -db $base -evalue 1e-5 \
       -outfmt "6 qseqid sseqid pident length evalue bitscore qcovs" \
       -num_threads 1 -out $salida

printf 'qseqid\tsseqid\tpident\tlength\tevalue\tbitscore\tqcovs\n'
sort -t$'\t' -k1,1 -k6,6nr $salida | awk -F'\t' '++n[$1] <= 5'
