create database HOSPITAL;
use HOSPITAL; 

CREATE TABLE Enfermeira (
    cre varchar(20) not null primary key,
    nome varchar(60) not null,
    telefone varchar(25) not null
);

CREATE TABLE Sala (
    numeroSala int not null primary key
);

CREATE TABLE Medico (
    crm VARCHAR(25) NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    telefone VARCHAR(25) NOT NULL
);

CREATE TABLE Paciente (
    cpf VARCHAR(11) NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    dataNasc DATE NOT NULL,
    rua VARCHAR(50) NOT NULL,
    numero INT NOT NULL
);

CREATE TABLE Paciente_Contatos (
    idContato INT AUTO_INCREMENT PRIMARY KEY,
    contatoEmergencia VARCHAR(25) NOT NULL,
    contatoEmergencia2 VARCHAR(25) NOT NULL,
    cpfPaciente VARCHAR(11) NOT NULL,
    FOREIGN KEY (cpfPaciente) REFERENCES Paciente(cpf)
);

CREATE TABLE Convenio (
    idConvenio INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(25) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE Paciente_Convenio (
    idPaciente_Convenio INT AUTO_INCREMENT PRIMARY KEY,
    cpfPaciente VARCHAR(11) NOT NULL,
    idConvenio INT NOT NULL,
    FOREIGN KEY (cpfPaciente) REFERENCES Paciente(cpf),
    FOREIGN KEY (idConvenio) REFERENCES Convenio(idConvenio)
);

CREATE TABLE Pagamento (
    idPagamento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(25) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    idAtendimento INT NOT NULL
);

CREATE TABLE Atendimento (
    idAtendimento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    motivoConsulta VARCHAR(100) NOT NULL,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    diagnostico VARCHAR(100) NOT NULL,
    recomendacoes VARCHAR(100) NOT NULL,
    cpfPaciente VARCHAR(11) NOT NULL,
    crmMedico VARCHAR(25) NOT NULL,
    numeroSala INT NOT NULL,
    FOREIGN KEY (cpfPaciente) REFERENCES Paciente(cpf),
    FOREIGN KEY (crmMedico) REFERENCES Medico(crm),
    FOREIGN KEY (numeroSala) REFERENCES Sala(numeroSala)
);

CREATE TABLE Plantao (
    idPlantao INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(10,2) NOT NULL,
    horario TIME NOT NULL,
    crmMedico VARCHAR(25) NOT NULL,
    FOREIGN KEY (crmMedico) REFERENCES Medico(crm)
);

CREATE TABLE Exame (
    idExame INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(25) NOT NULL,
    data DATE NOT NULL,
    status VARCHAR(25) NOT NULL,
    instituicao VARCHAR(100) NOT NULL,
    idAtendimento INT NOT NULL,
    FOREIGN KEY (idAtendimento) REFERENCES Atendimento(idAtendimento)
);


CREATE TABLE Atendimento_Exame (
    idAtendimento_Exame INT AUTO_INCREMENT PRIMARY KEY,
    idPaciente_Convenio INT NOT NULL,
    idAtendimento INT NOT NULL,
    idExame INT NOT NULL,
    FOREIGN KEY (idPaciente_Convenio) REFERENCES Paciente_Convenio(idPaciente_Convenio),
    FOREIGN KEY (idAtendimento) REFERENCES Atendimento(idAtendimento),
    FOREIGN KEY (idExame) REFERENCES Exame(idExame)
);

CREATE TABLE Medicamento (
    idMedicamento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    fabricante VARCHAR(25) NOT NULL,
    lote VARCHAR(25) NOT NULL,
    dataValidade DATE NOT NULL
);

CREATE TABLE Atendimento_Medicamento (
    idAtendimento_Medicamento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idAtendimento INT NOT NULL,
    idMedicamento INT NOT NULL,
    FOREIGN KEY (idAtendimento) REFERENCES Atendimento(idAtendimento),
    FOREIGN KEY (idMedicamento) REFERENCES Medicamento(idMedicamento)
);

CREATE TABLE Atendimento_Enfermeiro (
    idAtendimento_Enfermeiro int not null primary key AUTO_INCREMENT,
    cre VARCHAR(20) not null,
    idPagamento int not null,
    foreign key (cre) references Enfermeira(cre),
    foreign key (idPagamento) references Pagamento(idPagamento)
);