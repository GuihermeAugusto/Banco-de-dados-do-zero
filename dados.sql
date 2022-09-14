			-- cnpj: char(14), razao_social: varchar(45), endereço: varchar(65), contato: varchar(10)
INSERT INTO oficina (cnpj, razao_social, endereço, contato)
VALUES	('16254987932146', 'Oficina Paraíso', 'Rua do Itemonte, 45 - São Paulo SP', '1123265478');
		-- select * from oficina;
            
            -- pnome: varchar(25), cpf: char(11), cnpj: char(14), telefone: varchar(14), endereço: varchar(65)
INSERT INTO cliente (pnome, cpf, cnpj, telefone, endereço)
			values('Daniela', '09856478265', NULL, '965686472', 'Rua das Mares, 290 - Rio de Janeiro RJ'),
			      ('Manoel', '26548654123', NULL, '948675932', 'Estrada dos Passaros, 310 - São Paulo SP'),
				  ('Sanderson', '26897314621', NULL, '945685201', 'Rua Azul Brasil, 498 - Campinas SP'),
				  ('Maria', '13624879346', NULL, '935312478', 'Rua dos Ypes, 1350 - São Paulo Sp'),
                  ('Daniel', '10328960450', NULL, '932451697', 'Av. da Bandeira, 58 - Rio de Janeiro  RJ'),
				  ('Andrei', '12354621469', NULL, '94890723', 'Rua Batista, 70 - São Paulo SP');
		-- select * from cliente;
                
			-- placa: char(8), marca: varchar(15), modelo: varchar(15), servico: varchar(100),
INSERT INTO veiculo (placa, marca, modelo, servico)
			values  ('FBA45185', 'Hyundai', 'HB20', 'Funilaria'),
					('HNF3H549', 'Chevrolet', 'Corsa', 'motor'),
					('DEQ4G581', 'Fiat', 'Palio', 'Pintura'),
					('FFE6U423', 'Jepp', 'Renegade', 'Elétrica'),
					('CDD3B642', 'Volkswagen', 'Gol', 'Motor'),
					('AAS1E698', 'Volkswagen', 'Polo', 'Funilaria');

                        -- especialidade enum('Pintura', 'Funilaria', 'Mecânica', 'Elétrica',)	
INSERT INTO mecanico (pnome, cpf, telefone, especialidade)
			VALUES	('Almir', '36854752364', '982356479', 'Pintura'),
					('Josué', '22654328931', '995824631', 'Funilaria'),
                    ('Daniel', '13625324135', '35465879', 'Mecânica'),
					('Camilo', '18765428907', '988766541', 'Elétrica');
                    
            -- peca - varchar(30),  descricao - varchar(250), cursto - float
INSERT INTO pecas (peca, descricao, custo)
			VALUES	('Motor', 'Motor Completo', 25000),
                    ('Cabeçote', 'Componente do Motor', 4890),
                    ('Vela', 'Componente do Motor', 350),
                    ('Ar Condicionado', 'Interior', 2000),
                    ('Valvula', 'Componente do Motor', 590),
                    ('Pistão', 'Componente do Motor', 395),
                    ('Biela', 'Componente do Motor', 275),
                    ('Tanque', 'Célula de Combustível', 1250),
                    ('Bateria', 'Alimentação do Motor', 600),
                    ('Parachoque', 'Item de Segurança', 200),
                    ('Radiador', 'Sistema de Refrigeração', 645),
                    ('Bomba de Injeção', 'Injeção de Combustível', 680),
                    ('Bancos', 'Interior', 4000),
                    ('Kit Multimídia', 'Componentes Eletrônicos', 4000),
                    ('Painel', 'Peças Originais de Reposição', 1100),
                    ('Pneus', 'Componentes de Performance', 2250),
                    ('Pinças', 'Componente de Freio', 180),
                    ('Frisos', 'Jogo completo cromado', 2180),
                    ('Amortecedores', 'Componente de Suspenção', 570),
                    ('Escapamento', 'Sistema de Exaustão', 1355),
                    ('Tinta', 'Produto para Pintura final', 2355),
                    ('Primer', 'Produto para Ipermeabilização pré-pintura', 1055),
					('Coletores', 'Sistema de Exaustão', 1285),
					('Direção Elétrica', 'Sistema de direção', 6450);
            
            -- servico enum ('Pintura', 'Funilaria', 'Mecânica', 'Elétrica',, descrição - varchar(250), vlrServico float
INSERT INTO servicos (servico, descricao, vlrServico)
			VALUES	('Elétrica', 'Manutenção e/ou Melhorias', 950),
					('Funilaria', 'Manutenção e/ou Melhorias', 2300),
					('Mecânica', 'Manutenção e/ou Melhorias', 1200),
					('Pintura', 'Pintura completa, Polimento, manutenção', 1500);
					            
			-- (avlVeiPlaca - char(8) not null, avOrcamento - varchar(250), avlAutorizacao - boolean, avEntrada - date, avPrevEntrega - date)
INSERT INTO avaliacao (avlIdOficina, avlIdCliente, avlIdMecanico, avlIdveiculo, avlIdpecas, avlIdservicos, avlVeiPlaca, avOrcamento, avlAutorizacao, avEntrada, avPrevEntrega)
			VALUES	(1, 1, 2, 1, NULL, 2, 'FBA45185', 'coletores - sistema de exaustão', 1,  '2023-03-04', '2023-03-06'),
					(1, 2, 3, 2, 2, 3, 'HNF3H549', 'manutenção do motor', 1,  '2023-03-11', '2023-03-15'),
                    (1, 3, 1, 3, 21, 4, 'DEQ4G581', 'Pintura', 1,  '2023-03-19', '2023-03-23'),
                    (1, 4, 4, 4, 24, 1, 'FFE6U423', 'Sistema de direção', 1, '2023-03-26', '2023-03-29'),
                    (1, 5, 3, 5, 2, 3, 'CDD3B642', 'Cabeçote', 1, '2023-04-01', '2023-04-03'),
                    (1, 6, 2, 6, 19, 2, 'AAS1E698', 'parachoque', 1, '2022-08-25', '2022-09-11');
				
			-- (osValor - float, osPaga - boolean, observacoes - varchar(250)
INSERT INTO os (idOsAvaliacao, osValor, osPaga, observacoes)
			VALUES	(1, 3585, 1, 'Serviçõs Realizados: Troca coletores e sistema de exaustão. Veículo entregue no prazo.'),
					(2, 6090, 1, 'Manutenção do motor - cabeçote. Veículo entregue no prazo.'),
					(3, 3855, 1, 'Pintura finalizada e carro entregue no prazo.'),
					(4, 7400, 1, 'Troca sistema de direção entregue no prazo.'),
					(5, 6090, 1, 'manutenção realizada e entregue no prazo.'),
					(6, 2500, 1, 'Veículo em processo de preparação para polimento');
