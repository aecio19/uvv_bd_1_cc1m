CREATE USER aecio
WITH
SUPERUSER
CREATEDB
CREATEROLE
REPLICATION;

\PASSWORD aecio 'sql123';

CREATE DATABASE UVV
WITH
OWNER = aecio
TEMPLATE = template0
ENCODING = 'UFT8'
LC_COLLATE = 'pt_BR.UTF-8'
LC_CTYPE = 'pt_BR.UTF-8'
ALLOW_CONNECTIONS = true;

exit

psql -U aecio uvv
senha: sql123

CREATE SCHEMA elmasri;
SET SEARCH_PATH TO elmasri, '$user', public;

ALTER USER aecio
SET SEARCH_PATH TO elmarsi, '$user', public;
