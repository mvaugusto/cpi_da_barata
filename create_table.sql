CREATE EXTERNAL TABLE IF NOT EXISTS cantigas_raw (
    nome STRING,
    dica1 STRING,
    dica2 STRING,
    codigo STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
STORED AS TEXTFILE
LOCATION 's3://self-wkp-sa-east-1/sor/cantigas_raw/'
TBLPROPERTIES (
    'skip.header.line.count'='1' -- Ignora o cabeçalho original da imagem
);