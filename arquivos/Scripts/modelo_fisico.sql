/* NiceTransports_Logico: */

CREATE TABLE Onibus (
    ID SERIAL PRIMARY KEY UNIQUE,
    Placa VARCHAR,
    Qntd_Assentos INTEGER,
    Data_Compra DATE
);

CREATE TABLE Linha (
    ID SERIAL PRIMARY KEY UNIQUE,
    Campo VARCHAR,
    Data_Criacao DATE
);

alter table Linha RENAME COLUMN Campo TO Nome

CREATE TABLE Alocado (
    fk_Onibus_ID SERIAL,
    fk_Linha_ID SERIAL,
    dataHora TIMESTAMP
);

CREATE TABLE Ponto_de_Onibus (
    ID SERIAL PRIMARY KEY UNIQUE,
    fk_Endereco_ID SERIAL,
    Numero INTEGER,
    Qntd_Assentos INTEGER
);

CREATE TABLE Percorre (
    ID SERIAL PRIMARY KEY,
    fk_Linha_ID SERIAL,
    fk_Ponto_de_Onibus_ID SERIAL,
    Ordem INTEGER,
    Ativo BOOLEAN
);

CREATE TABLE Endereco (
    ID SERIAL PRIMARY KEY UNIQUE,
    Cidade VARCHAR,
    Bairro VARCHAR,
    Tipo_Via_Urbana VARCHAR,
    Nome_Via_Urbana VARCHAR
);

CREATE TABLE Passa (
    ID SERIAL PRIMARY KEY UNIQUE,
    fk_Onibus_ID SERIAL,
    fk_Ponto_de_Onibus_ID SERIAL,
    dataHora TIMESTAMP
);

CREATE TABLE Cliente (
    ID SERIAL PRIMARY KEY,
    Hashcode VARCHAR,
    UNIQUE (Hashcode, ID)
);

CREATE TABLE Entrega (
    ID SERIAL PRIMARY KEY UNIQUE,
    fk_Onibus_ID SERIAL,
    fk_Cliente_ID SERIAL,
    dataHora TIMESTAMP
);

CREATE TABLE Recebe (
    ID SERIAL PRIMARY KEY UNIQUE,
    fk_Onibus_ID INTEGER,
    fk_Cliente_ID INTEGER,
    dataHora TIMESTAMP
);

CREATE TABLE Chega (
    ID INTEGER PRIMARY KEY UNIQUE,
    fk_Cliente_ID SERIAL,
    fk_Ponto_de_Onibus_ID SERIAL,
    dataHora TIMESTAMP
);

CREATE TABLE Deixa (
    ID INTEGER PRIMARY KEY UNIQUE,
    fk_Cliente_ID INTEGER,
    fk_Ponto_de_Onibus_ID INTEGER,
    dataHora TIMESTAMP
);
 
ALTER TABLE Alocado ADD CONSTRAINT FK_Alocado_Onibus_ID
    FOREIGN KEY (fk_Onibus_ID)
    REFERENCES Onibus (ID);
 
ALTER TABLE Alocado ADD CONSTRAINT FK_Alocado_Linha_ID
    FOREIGN KEY (fk_Linha_ID)
    REFERENCES Linha (ID);
 
ALTER TABLE Ponto_de_Onibus ADD CONSTRAINT FK_Ponto_de_Onibus_Endereco_ID
    FOREIGN KEY (fk_Endereco_ID)
    REFERENCES Endereco (ID);
 
ALTER TABLE Percorre ADD CONSTRAINT FK_Percorre_Linha_ID
    FOREIGN KEY (fk_Linha_ID)
    REFERENCES Linha (ID);
 
ALTER TABLE Percorre ADD CONSTRAINT FK_Percorre_Ponto_de_Onibus_ID
    FOREIGN KEY (fk_Ponto_de_Onibus_ID)
    REFERENCES Ponto_de_Onibus (ID);
 
ALTER TABLE Passa ADD CONSTRAINT FK_Passa_Onibus_ID
    FOREIGN KEY (fk_Onibus_ID)
    REFERENCES Onibus (ID);
 
ALTER TABLE Passa ADD CONSTRAINT FK_Passa_Ponto_de_Onibus_ID
    FOREIGN KEY (fk_Ponto_de_Onibus_ID)
    REFERENCES Ponto_de_Onibus (ID);
 
ALTER TABLE Entrega ADD CONSTRAINT FK_Entrega_Onibus_ID
    FOREIGN KEY (fk_Onibus_ID)
    REFERENCES Onibus (ID);
 
ALTER TABLE Entrega ADD CONSTRAINT FK_Entrega_Cliente_ID
    FOREIGN KEY (fk_Cliente_ID)
    REFERENCES Cliente (ID);
 
ALTER TABLE Recebe ADD CONSTRAINT FK_Recebe_Onibus_ID
    FOREIGN KEY (fk_Onibus_ID)
    REFERENCES Onibus (ID);
 
ALTER TABLE Recebe ADD CONSTRAINT FK_Recebe_Cliente_ID
    FOREIGN KEY (fk_Cliente_ID)
    REFERENCES Cliente (ID);
 
ALTER TABLE Chega ADD CONSTRAINT FK_Chega_Cliente_ID
    FOREIGN KEY (fk_Cliente_ID)
    REFERENCES Cliente (ID);
 
ALTER TABLE Chega ADD CONSTRAINT FK_Chega_Ponto_de_Onibus_ID
    FOREIGN KEY (fk_Ponto_de_Onibus_ID)
    REFERENCES Ponto_de_Onibus (ID);
 
ALTER TABLE Deixa ADD CONSTRAINT FK_Deixa_ClienteID
    FOREIGN KEY (fk_Cliente_ID)
    REFERENCES Cliente (ID);
 
ALTER TABLE Deixa ADD CONSTRAINT FK_Deixa_Ponto_de_Onibus_ID
    FOREIGN KEY (fk_Ponto_de_Onibus_ID)
    REFERENCES Onibus (ID);