-- database : tanya_jawab
-- tabel:
-- 	Pengguna:
-- 		varchar username (PK)
-- 		varchar pass
-- 		varchar nama_asli	
-- 		## Opsional
-- 		BLOB foto 
-- 		varchar deskripsi_akun
-- 	Pertanyaan:
-- 		varchar pertanyaan (PK)
-- 		varchar username (FK)
-- 		BLOB image ## opsional
-- 	Jawaban / Komentar:
-- 		varchar komentar
-- 		varchar pertanyaan (FK)
-- 		BLOB image ## opsional

CREATE DATABASE tanya_jawab;

CREATE TABLE Pengguna(
username VARCHAR(50),
password VARCHAR(20),
nama_akun VARCHAR(50),
-- #foto_akun BLOB,
-- #deskripsi_akun VARCHAR (300),
CONSTRAINT uname_PK PRIMARY KEY(username));

CREATE TABLE Pertanyaan(
pertanyaan VARCHAR(300),
username VARCHAR (50),
-- #foto_pertanyaan BLOB,
CONSTRAINT pertanyaan_PK PRIMARY KEY(pertanyaan),
CONSTRAINT uname_FK FOREIGN KEY(username) references Pengguna(username) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE J_K(
komentar VARCHAR (300),
pertanyaan VARCHAR (300),
-- #foto_komentar BLOB,
CONSTRAINT uname_FK FOREIGN KEY(pertanyaan) references Pertanyaan(pertanyaan) ON DELETE CASCADE ON UPDATE CASCADE);



DROP TABLE J_K;
DROP TABLE Pertanyaan;
DROP TABLE Pengguna;

