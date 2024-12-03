-- Inserindo dados na tabela Paciente
INSERT INTO Paciente (cpf, nome, dataNasc, rua, numero) VALUES
('001011226', 'Melissa Evans', '1957-02-23', 'Christy Fall', 4158),
('001011387', 'Jonathan Hernandez', '1967-04-29', 'Thomas Bridge', 7574),
('001012552', 'Francisco Beard', '2005-06-14', 'Amanda Mountain', 9806),
('001012941', 'Tracie Strickland', '1937-05-06', 'Johnson Lake', 9858),
('001013759', 'Jim Benjamin', '1935-01-07', 'Lopez Landing', 3726),
('001014336', 'Jessica Smith', '1979-02-20', 'Amy Crescent', 7528),
('001015291', 'Amanda Ho', '1959-11-15', 'Melendez Falls', 8219),
('001015481', 'Kyle Hernandez', '1939-08-21', 'Robinson Neck', 1990),
('001015598', 'Sara Baker', '1970-01-17', 'Denise Port', 2172),
('001015970', 'Corey Cameron', '1948-08-29', 'Porter Route', 594),
('001017087', 'Jeffrey Mcgee', '1967-02-21', 'Hernandez Camp', 7323),
('001017990', 'Thomas Smith', '1966-03-06', 'Tammy Expressway', 8465),
('001021254', 'Michael Lopez', '1994-10-14', 'Gilbert Lodge', 4640),
('001022523', 'Christopher Williams', '1998-02-24', 'Andrew Cape', 4231),
('001023965', 'Aaron Mcgee', '2001-12-08', 'Lee Isle', 4030),
('001024906', 'Ruth Duncan', '1972-10-15', 'Timothy Mountain', 1096),
('001026143', 'Christopher Washington', '2001-06-05', 'Eric Keys', 9170),
('001526145', 'Robert Junior', '2003-03-22', 'St Spice', 8790);


-- Inserindo dados na tabela Paciente_Contatos
INSERT INTO Paciente_Contatos (contatoEmergencia, contatoEmergencia2, cpfPaciente) VALUES
('(11) 99999-0001', '(11) 98888-0001', '001011226'),
('(11) 99999-0002', '(11) 98888-0002', '001011387'),
('(11) 99999-0003', '(11) 98888-0003', '001012552'),
('(11) 99999-0004', '(11) 98888-0004', '001012941'),
('(11) 99999-0005', '(11) 98888-0005', '001013759'),
('(11) 99999-0006', '(11) 98888-0006', '001014336'),
('(11) 99999-0007', '(11) 98888-0007', '001015291'),
('(11) 99999-0008', '(11) 98888-0008', '001015481'),
('(11) 99999-0009', '(11) 98888-0009', '001015598'),
('(11) 99999-0010', '(11) 98888-0010', '001015970'),
('(11) 99999-0011', '(11) 98888-0011', '001017087'),
('(11) 99999-0012', '(11) 98888-0012', '001017990'),
('(11) 99999-0013', '(11) 98888-0013', '001021254'),
('(11) 99999-0014', '(11) 98888-0014', '001022523'),
('(11) 99999-0015', '(11) 98888-0015', '001023965'),
('(11) 99999-0016', '(11) 98888-0016', '001024906'),
('(11) 99999-0017', '(11) 98888-0017', '001026143');

-- Inserindo dados na tabela Enfermeira
INSERT INTO Enfermeira (cre, nome, telefone) VALUES
('CRE12345', 'Ana Silva', '(11) 98765-4321'),
('CRE67890', 'Beatriz Costa', '(11) 91234-5678'),
('CRE11223', 'Carla Souza', '(11) 93874-5643'),
('CRE44567', 'Daniela Lima', '(11) 91928-6754'),
('CRE78901', 'Fernanda Oliveira', '(11) 98856-1234'),
('CRE23456', 'Gabriela Santos', '(11) 97356-4597'),
('CRE67834', 'Heloisa Silva', '(11) 97458-1237'),
('CRE90874', 'Isabela Rocha', '(11) 92345-6874'),
('CRE23789', 'Juliana Costa', '(11) 92034-7265'),
('CRE56347', 'Karen Pereira', '(11) 94456-7986');


-- Inserindo dados na tabela Medico
INSERT INTO Medico (crm, nome, especialidade, telefone) VALUES
('CRM1234', 'Carlos Medeiros', 'Cardiologista', '(11) 98888-1111'),
('CRM5678', 'Fernanda Souza', 'Neurologista', '(11) 97777-2222'),
('CRM9101', 'Luiza Martins', 'Pediatra', '(11) 99888-3333'),
('CRM1122', 'Marcos Pereira', 'Ortopedista', '(11) 93456-7777'),
('CRM3344', 'Paula Santos', 'Dermatologista', '(11) 98877-4444'),
('CRM5566', 'Roberto Costa', 'Psiquiatra', '(11) 99776-5555'),
('CRM7788', 'Simone Ribeiro', 'Oftalmologista', '(11) 92988-6666'),
('CRM9900', 'Tatiane Alves', 'Ginecologista', '(11) 91999-7777'),
('CRM2233', 'Victor Lima', 'Infectologista', '(11) 93999-8888'),
('CRM4455', 'Walter Silva', 'Endocrinologista', '(11) 96888-9999');

-- Inserindo dados na tabela Sala
INSERT INTO Sala (numeroSala) VALUES
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109),
(110),
(111),
(112),
(113),
(114),
(115),
(116);

-- Inserindo dados na tabela Convenio
INSERT INTO Convenio (idConvenio, tipo, valor) VALUES
(1, 'Plano Básico', 200.00),
(2, 'Plano Premium', 500.00);


-- Inserindo dados na tabela Paciente_Convenio
INSERT INTO Paciente_Convenio (idPaciente_Convenio, cpfPaciente, idConvenio) VALUES
(1, '001011226', 1),
(2, '001011387', 2),
(3, '001012552', 1),
(4, '001012941', 2),
(5, '001013759', 1),
(6, '001014336', 2),
(7, '001015291', 1),
(8, '001015481', 2),
(9, '001015598', 1),
(10, '001015970', 2),
(11, '001017087', 1),
(12, '001017990', 2),
(13, '001021254', 1),
(14, '001022523', 2),
(15, '001023965', 1),
(16, '001024906', 2),
(17, '001026143', 1);

-- Inserindo dados na tabela Atendimento
INSERT INTO Atendimento (idAtendimento, motivoConsulta, data, hora, diagnostico, recomendacoes, cpfPaciente, crmMedico, numeroSala) VALUES
(1, 'Dor no peito', '2024-12-01', '10:30:00', 'Angina', 'Evitar esforço físico', '001011226', 'CRM1234', 101),
(2, 'Dores de cabeça', '2024-12-02', '14:00:00', 'Hipertensão', 'Reduzir Consumo de Sal', '001011387', 'CRM5678', 102),
(3, 'Dor abdominal', '2024-12-03', '09:00:00', 'Gastrite', 'Evitar alimentos gordurosos', '001012552', 'CRM1234', 103),
(4, 'Falta de ar', '2024-12-04', '11:30:00', 'Asma', 'Usar inalador conforme necessidade', '001012941', 'CRM5678', 104),
(5, 'Dores articulares', '2024-12-05', '13:00:00', 'Artrite', 'Tomar anti-inflamatórios', '001013759', 'CRM1234', 105),
(6, 'Febre alta', '2024-12-06', '08:00:00', 'Infecção viral', 'Descanso e hidratação', '001014336', 'CRM5678', 106),
(7, 'Cansaço excessivo', '2024-12-07', '10:00:00', 'Hipotireoidismo', 'Tomar levotiroxina', '001015291', 'CRM1234', 107),
(8, 'Dores nas costas', '2024-12-08', '15:00:00', 'Hérnia de disco', 'Fisioterapia', '001015481', 'CRM5678', 108),
(9, 'Dores de estômago', '2024-12-09', '16:30:00', 'Úlcera', 'Evitar alimentos picantes', '001015598', 'CRM1234', 109),
(10, 'Mal estar', '2024-12-10', '17:30:00', 'Gripal', 'Tomar medicamentos antivirais', '001015970', 'CRM5678', 110),
(11, 'Dor nas articulações', '2024-12-11', '14:00:00', 'Osteoartrite', 'Exercícios físicos regulares', '001017087', 'CRM1234', 111),
(12, 'Tontura', '2024-12-12', '10:30:00', 'Diabetes', 'Evitar açúcar', '001017990', 'CRM5678', 112),
(13, 'Problemas respiratórios', '2024-12-13', '09:00:00', 'Doença pulmonar obstrutiva crônica', 'Uso de broncodilatadores', '001021254', 'CRM1234', 113),
(14, 'Desmaios', '2024-12-14', '11:30:00', 'Hipotensão', 'Tomar líquidos regularmente', '001022523', 'CRM5678', 114),
(15, 'Febre e calafrios', '2024-12-15', '13:00:00', 'Malária', 'Tomar antimaláricos', '001023965', 'CRM1234', 115),
(16, 'Dor no corpo', '2024-12-16', '15:00:00', 'Influenza', 'Tomar antivirais', '001024906', 'CRM5678', 116),
(17, 'Dor no corpo', '2024-12-16', '15:00:00', 'Influenza', 'Tomar antivirais', '001526145', 'CRM5678', 116);

-- Inserindo dados na tabela Pagamento
INSERT INTO Pagamento (idPagamento, tipo, valor, idAtendimento) VALUES
(1, 'Cartão de Crédito', 300.00, 1),
(2, 'Dinheiro', 150.00, 2),
(3, 'Cartão de Crédito', 200.00, 3),
(4, 'Dinheiro', 250.00, 4),
(5, 'Cartão de Crédito', 300.00, 5),
(6, 'Dinheiro', 150.00, 6),
(7, 'Cartão de Crédito', 250.00, 7),
(8, 'Dinheiro', 300.00, 8),
(9, 'Cartão de Crédito', 200.00, 9),
(10, 'Dinheiro', 250.00, 10),
(11, 'Cartão de Crédito', 300.00, 11),
(12, 'Dinheiro', 150.00, 12),
(13, 'Cartão de Crédito', 250.00, 13),
(14, 'Dinheiro', 300.00, 14),
(15, 'Cartão de Crédito', 200.00, 15),
(16, 'Dinheiro', 250.00, 16);


-- Inserindo dados na tabela Plantao
INSERT INTO Plantao (idPlantao, valor, horario, crmMedico) VALUES
(1, 500.00, '08:00:00', 'CRM1234'),
(2, 450.00, '20:00:00', 'CRM5678');

-- Inserindo dados na tabela Exame
INSERT INTO Exame (idExame, tipo, data, status, instituicao, idAtendimento) VALUES
(1, 'Eletrocardiograma', '2024-12-01', 'Finalizado', 'Clínica Coração Saudável', 1),
(2, 'Tomografia', '2024-12-02', 'Pendente', 'Laboratório Central', 2),
(3, 'Ultrassom', '2024-12-03', 'Pendente', 'Hospital São José', 3),
(4, 'Ressonância Magnética', '2024-12-04', 'Finalizado', 'Centro de Diagnóstico', 4),
(5, 'Raio-X', '2024-12-05', 'Pendente', 'Clínica Diagnóstica', 5),
(6, 'Exame de sangue', '2024-12-06', 'Finalizado', 'Laboratório Central', 6),
(7, 'Eletrocardiograma', '2024-12-07', 'Finalizado', 'Clínica Coração Saudável', 7),
(8, 'Tomografia', '2024-12-08', 'Pendente', 'Hospital São José', 8),
(9, 'Ultrassom', '2024-12-09', 'Finalizado', 'Centro de Diagnóstico', 9),
(10, 'Ressonância Magnética', '2024-12-10', 'Finalizado', 'Laboratório Central', 10),
(11, 'Raio-X', '2024-12-11', 'Pendente', 'Clínica Diagnóstica', 11),
(12, 'Exame de sangue', '2024-12-12', 'Pendente', 'Hospital São José', 12),
(13, 'Eletrocardiograma', '2024-12-13', 'Finalizado', 'Clínica Coração Saudável', 13),
(14, 'Tomografia', '2024-12-14', 'Finalizado', 'Centro de Diagnóstico', 14),
(15, 'Ultrassom', '2024-12-15', 'Pendente', 'Laboratório Central', 15),
(16, 'Ressonância Magnética', '2024-12-16', 'Finalizado', 'Hospital São José', 16);

-- Inserindo dados na tabela Atendimento_Exame
INSERT INTO Atendimento_Exame (idAtendimento_Exame, idPaciente_Convenio, idAtendimento, idExame) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 11),
(12, 12, 12, 12),
(13, 13, 13, 13),
(14, 14, 14, 14),
(15, 15, 15, 15),
(16, 16, 16, 16);

-- Inserindo dados na tabela Medicamento
INSERT INTO Medicamento (idMedicamento, nome, fabricante, lote, dataValidade) VALUES
(1, 'Paracetamol', 'Farmacêutica A', 'L12345', '2025-06-01'),
(2, 'Ibuprofeno', 'Farmacêutica B', 'L67890', '2026-03-01'),
(3, 'Amoxicilina', 'Farmacêutica C', 'L11223', '2025-12-01'),
(4, 'Atenolol', 'Farmacêutica D', 'L44556', '2026-06-15'),
(5, 'Omeprazol', 'Farmacêutica E', 'L77889', '2025-09-30'),
(6, 'Dextrometorfano', 'Farmacêutica F', 'L99000', '2026-02-20'),
(7, 'Dipirona', 'Farmacêutica G', 'L22334', '2025-11-10'),
(8, 'Cefalexina', 'Farmacêutica H', 'L55667', '2025-05-20'),
(9, 'Prednisona', 'Farmacêutica I', 'L88990', '2026-04-25'),
(10, 'Losartana', 'Farmacêutica J', 'L33445', '2025-08-15');

-- Inserindo dados na tabela Atendimento_Medicamento
INSERT INTO Atendimento_Medicamento (idAtendimento_Medicamento, idAtendimento, idMedicamento) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 1),
(12, 12, 2),
(13, 13, 3),
(14, 14, 4),
(15, 15, 5),
(16, 16, 6);

-- Inserindo dados na tabela Atendimento_Enfermeiro
INSERT INTO Atendimento_Enfermeiro (idAtendimento_Enfermeiro, cre, idPagamento) VALUES
(1, 'CRE12345', 1),
(2, 'CRE67890', 2),
(3, 'CRE12345', 3),
(4, 'CRE67890', 4),
(5, 'CRE12345', 5),
(6, 'CRE67890', 6),
(7, 'CRE12345', 7),
(8, 'CRE67890', 8),
(9, 'CRE12345', 9),
(10, 'CRE67890', 10),
(11, 'CRE12345', 11),
(12, 'CRE67890', 12),
(13, 'CRE12345', 13),
(14, 'CRE67890', 14),
(15,'CRE12345', 15),
(16, 'CRE67890', 16);