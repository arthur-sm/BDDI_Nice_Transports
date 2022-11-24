/* NiceTransports_Logico*/

DROP TABLE IF EXISTS Onibus;
CREATE TABLE Onibus (
    ID SERIAL PRIMARY KEY UNIQUE,
    Placa VARCHAR(15),
    Qntd_Assentos INTEGER,
    Data_Compra DATE
);

DROP TABLE IF EXISTS Linha;
CREATE TABLE Linha (
    ID SERIAL PRIMARY KEY UNIQUE,
    Nome VARCHAR(10),
    Data_Criacao DATE
);

DROP TABLE IF EXISTS Alocado;
CREATE TABLE Alocado (
    fk_Onibus_ID INTEGER,
    fk_Linha_ID INTEGER,
    dataHora TIMESTAMP
);

DROP TABLE IF EXISTS Ponto_de_Onibus;
CREATE TABLE Ponto_de_Onibus (
    ID SERIAL PRIMARY KEY UNIQUE,
    fk_Endereco_ID INTEGER,
    Numero INTEGER,
    Qntd_Assentos INTEGER
);

DROP TABLE IF EXISTS Percorre;
CREATE TABLE Percorre (
    ID SERIAL PRIMARY KEY,
    fk_Linha_ID INTEGER,
    fk_Ponto_de_Onibus_ID INTEGER,
    Ordem INTEGER,
    Ativo BOOLEAN
);

DROP TABLE IF EXISTS Endereco;
CREATE TABLE Endereco (
    ID SERIAL PRIMARY KEY UNIQUE,
    Cidade VARCHAR(20),
    Bairro VARCHAR(30),
    Tipo_Via_Urbana VARCHAR(10),
    Nome_Via_Urbana VARCHAR(30)
);

DROP TABLE IF EXISTS Passa;
CREATE TABLE Passa (
    ID SERIAL PRIMARY KEY UNIQUE,
    fk_Onibus_ID INTEGER,
    fk_Ponto_de_Onibus_ID INTEGER,
    dataHora TIMESTAMP
);

DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
    ID SERIAL PRIMARY KEY,
    Hashcode VARCHAR(512),
    UNIQUE (Hashcode, ID)
);

DROP TABLE IF EXISTS Entrega;
CREATE TABLE Entrega (
    ID SERIAL PRIMARY KEY UNIQUE,
    fk_Onibus_ID INTEGER,
    fk_Cliente_ID INTEGER,
    dataHora TIMESTAMP
);

DROP TABLE IF EXISTS Recebe;
CREATE TABLE Recebe (
    ID SERIAL PRIMARY KEY UNIQUE,
    fk_Onibus_ID INTEGER,
    fk_Cliente_ID INTEGER,
    dataHora TIMESTAMP
);

DROP TABLE IF EXISTS Chega;
CREATE TABLE Chega (
    ID SERIAL PRIMARY KEY UNIQUE,
    fk_Cliente_ID INTEGER,
    fk_Ponto_de_Onibus_ID INTEGER,
    dataHora TIMESTAMP
);

DROP TABLE IF EXISTS Deixa;
CREATE TABLE Deixa (
    ID SERIAL PRIMARY KEY UNIQUE,
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