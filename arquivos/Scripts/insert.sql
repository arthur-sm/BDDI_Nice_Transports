insert into Onibus (Placa, Qntd_Assentos, Data_Compra) values
('JKB1530',	40,	'2008-01-27'),
('KJF8291',	40,	'2008-01-27'),
('HSF4506',	40,	'2008-01-27'),
('DDP0212',	38,	'2011-04-19'),
('BAB5385',	38,	'2011-04-19'),
('JSV8537',	38,	'2011-04-19'),
('MEG0304',	42,	'2015-07-09'),
('AHT2328',	42,	'2015-07-09'),
('LNN9236',	42,	'2015-07-09'),
('IFR7224',	42,	'2015-07-09')


insert into Linha (Nome, Data_Criacao) values
('AO63', '2021-12-30'),
('CR70', '2021-12-31'),
('EV19', '2022-01-01'),
('FH68', '2022-01-02'),
('GR08', '2021-01-03'),
('LL13', '2021-01-04'),
('JJ90', '2021-01-05'),
('RD18', '2021-01-06'),
('SX69', '2021-01-07'),
('UP80', '2021-01-08')

insert into Endereco (Cidade, Bairro, Tipo_Via_Urbana, Nome_Via_Urbana) values
('Vitória', 'Jardim da Penha', 'Rua', 'Adriano Fontana'),
('Serra', 'Serra Dourada 2', 'Avenida', 'Brasília'),
('Cariacica', 'Jardim América', 'Avenida', 'América'),
('Vila Velha', 'Itapoã', 'Rua',	'Antônio Fantini'),
('Vitória',	'Jardim Camburi', 'Avenida', 'Luiz Nepomoceno'),
('Viana', 'Universal', 'Rua', '1º de Maio'),
('Vitória',	'Centro',	'Rua', 'Alberto de Oliveira Santos'),
('Vila Velha',	'Itaparica', 'Rua', 'Adélio Coutinho'),
('Serra', 'Carapina', 'Avenida', 'Vitória'),
('Cariacica', 'Campo Grande', 'Avenida', 'Campo Grande')


insert into Cliente (Hashcode) values
('https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/Clientes/11-1-17.jpg?raw=true'),
('https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/Clientes/160802-news-good-place-kristen-bell.jpg?raw=true'),
('https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/Clientes/8553759.jpg?raw=true'),
('https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/Clientes/Deep_throat.jpg?raw=true'),
('https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/Clientes/LB.jpg?raw=true'),
('https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/Clientes/Mulder2016.png?raw=true'),
('https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/Clientes/SEC0919-Cyber-Feat-slide1_900px.jpg?raw=true'),
('https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/Clientes/ff7c7caf2635c41398505ba3fa509321.jpg?raw=true'),
('https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/Clientes/scully.jpg?raw=true'),
('https://github.com/arthur-sm/BDDI_Nice_Transports/blob/master/images/Clientes/14facialrecognition-01-superJumbo.jpg?raw=true')


insert into Ponto_de_Onibus (fk_endereco_id, Numero, Qntd_Assentos) values
(1, 73, 10),
(2, 1048, 12),
(3, 62,	16),
(4, 31,	10),
(5, 9,	12),
(6, 20,	16),
(7, 36,	10),
(8, 20,	12),
(9, 115, 16),
(10, 98, 10)

insert into Alocado (fk_onibus_id, fk_linha_id, datahora) values
(1,1,'2022-01-01 15:02:46'),
(2,2,'2022-01-01 17:25:16'),
(3,3,'2022-01-01 11:12:33'),
(4,4,'2022-01-01 15:33:05'),
(5,5,'2022-01-01 17:59:36'),
(6,6,'2022-01-01 15:28:28'),
(7,7,'2022-01-01 17:52:57'),
(8,8,'2022-01-01 18:05:05'),
(9,9,'2022-01-01 10:56:32'),
(10,10,'2022-01-01 15:57:04')

insert into Percorre (fk_linha_id, fk_ponto_de_onibus_id, ordem, ativo) values
(1, 1, 1, 't'),
(2, 2, 5, 'f'),
(3, 3, 9, 't'),
(4, 4, 2, 'f'),
(5, 5, 11, 'f'),
(6, 6, 3, 't'),
(7, 7, 5, 'f'),
(8, 8, 4, 't'),
(9, 9, 6, 'f'),
(10, 10, 8, 't')

insert into Deixa (id, fk_cliente_id,fk_ponto_de_onibus_id, datahora) values
(1,1,1,'2022-11-17 15:02:46'),
(2,2,2,'2022-11-17 16:30:39'),
(3,3,3,'2022-11-15 18:30:15'),
(4,4,4,'2022-11-05 19:30:53'),
(5,5,5,'2022-11-07 19:30:41'),
(6,6,6,'2022-11-22 19:30:20'),
(7,7,7,'2022-11-01 09:30:34'),
(8,8,8,'2022-11-10 07:30:58'),
(9,9,9,'2022-11-12 06:00:04'),
(10,10,10,'2022-11-18 08:10:02')

insert into chega (id,fk_cliente_id,fk_ponto_de_onibus_id,datahora) values
(1,1,1,'2022-11-17 15:00:46'),
(2,2,2,'2022-11-17 16:15:00'),
(3,3,3,'2022-11-15 18:22:00'),
(4,4,4,'2022-11-05 19:01:00'),
(5,5,5,'2022-11-07 19:13:00'),
(6,6,6,'2022-11-22 18:55:00'),
(7,7,7,'2022-11-01 09:11:00'),
(8,8,8,'2022-11-10 07:03:00'),
(9,9,9,'2022-11-12 05:56:00'),
(10,10,10,'2022-11-18 08:06:00')

insert into Recebe (id, fk_cliente_id,fk_onibus_id, datahora) values
(1,1,1,'2022-11-17 15:03:00'),
(2,2,2,'2022-11-17 16:30:51'),
(3,3,3,'2022-11-15 18:30:22'),
(4,4,4,'2022-11-05 19:30:58'),
(5,5,5,'2022-11-07 19:30:49'),
(6,6,6,'2022-11-22 19:30:24'),
(7,7,7,'2022-11-01 09:30:39'),
(8,8,8,'2022-11-10 07:31:00'),
(9,9,9,'2022-11-12 06:00:08'),
(10,10,10,'2022-11-18 08:10:05')

insert into entrega (id, fk_onibus_id, fk_cliente_id, datahora) values
(1,1,1,'2022-11-17 15:42:46'),
(2,2,2,'2022-11-17 16:45:11'),
(3,3,3,'2022-11-15 18:55:03'),
(4,4,4,'2022-11-05 20:03:08'),
(5,5,5,'2022-11-07 19:58:53'),
(6,6,6,'2022-11-22 20:30:47'),
(7,7,7,'2022-11-01 09:50:58'),
(8,8,8,'2022-11-10 08:12:01'),
(9,9,9,'2022-11-12 07:10:41'),
(10,10,10,'2022-11-18 08:46:30')

insert into passa (id, fk_onibus_id, fk_ponto_de_onibus_id, datahora) values
(1,1,1,'2022-11-17 15:02:46'),
(2,2,2,'2022-11-17 16:30:39'),
(3,3,3,'2022-11-15 18:30:15'),
(4,4,4,'2022-11-05 19:30:53'),
(5,5,5,'2022-11-07 19:30:41'),
(6,6,6,'2022-11-22 19:30:20'),
(7,7,7,'2022-11-01 09:30:34'),
(8,8,8,'2022-11-10 08:12:01'),
(9,9,9,'2022-11-12 06:00:04'),
(10,10,10,'2022-11-18 08:10:02')