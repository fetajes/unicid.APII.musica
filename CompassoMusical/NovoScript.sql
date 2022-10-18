CREATE DATABASE dbMusical;

USE Musical;


CREATE TABLE gerencial (
							RGM INT NOT NULL,
                            nomeAluno VARCHAR (100),
                            nascAluno DATE DEFAULT '1200-01-01',
					        CPF INT,
							emailAluno VARCHAR (100),
                            endAluno VARCHAR (100),
                            munAluno VARCHAR (100),
							ufAluno CHAR (2),
                            celAluno INT,
                            instrumento VARCHAR(100), 
							professor VARCHAR (100),
							perAluno VARCHAR (100)
							discAluno VARCHAR (100),
							semAluno VARCHAR (100),
							notaAluno VARCHAR (2),
							falAluno INT
							CONSTRAINT PK_RGM PRIMARY KEY (RGM)
							);
