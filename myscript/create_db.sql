CREATE USER tft_user WITH PASSWORD 'Pass1@3';
ALTER ROLE tft_user SET client_encoding TO 'utf8';
ALTER ROLE tft_user SET default_transaction_isolation TO 'read committed';
ALTER ROLE tft_user SET TIMEZONE TO 'Asia/Seoul';

ALTER ROLE tft_user WITH SUPERUSER;

CREATE DATABASE tft_db;
GRANT ALL PRIVILEGES ON DATABASE tft_db TO tft_user;