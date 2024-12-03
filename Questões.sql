# Indices
# Atendimento
CREATE INDEX idx_atendimento_cpfPaciente ON Atendimento (cpfPaciente);
CREATE INDEX idx_atendimento_crmMedico ON Atendimento (crmMedico);
CREATE INDEX idx_atendimento_data ON Atendimento (data);
CREATE INDEX idx_atendimento_numeroSala ON Atendimento (numeroSala);
# Medico
CREATE INDEX idx_medico_crm ON Medico (crm);
CREATE INDEX idx_medico_especialidade ON Medico (especialidade);
# Atendimento_Medicamento
CREATE INDEX idx_atendimento_medicamento_idAtendimento ON Atendimento_Medicamento (idAtendimento);
CREATE INDEX idx_atendimento_medicamento_idMedicamento ON Atendimento_Medicamento (idMedicamento);
# Medicamento
CREATE INDEX idx_medicamento_nome ON Medicamento (nome);
CREATE INDEX idx_medicamento_fabricante ON Medicamento (fabricante);
# Paciente
CREATE INDEX idx_paciente_cpf ON Paciente (cpf);
CREATE INDEX idx_paciente_nome ON Paciente (nome);


# 1
#explain
select m.nome as medico_nome, m.especialidade, count(a.idAtendimento) AS num_atendimentos
from medico m
join atendimento a on m.crm = a.crmMedico
join Paciente p on a.cpfPaciente = p.cpf
group by m.crm, m.nome, m.especialidade
having COUNT(a.idAtendimento) > 3;


# 2
#explain
select pa.nome as paciente_nome, e.data as exame_data, e.tipo as exame_tipo
from exame e
join atendimento a on e.idAtendimento = a.idAtendimento
join paciente pa on a.cpfPaciente = pa.cpf
where e.status = 'pendente' and (a.diagnostico = 'hipertensão' or a.diagnostico = 'diabetes');


# 3
#explain
select m.nome as nomeMedicamento, count(am.idAtendimento_Medicamento) as quantidadePrescricoes, med.especialidade
from medicamento m
join atendimento_medicamento am on m.idMedicamento = am.idMedicamento
join atendimento a on am.idAtendimento = a.idAtendimento
join medico med on a.crmMedico = med.crm
where med.especialidade = 'cardiologista'
group by m.nome, med.especialidade
order by quantidadePrescricoes desc;


# 4
#explain
select med.nome as nomeMedico, count(a.idAtendimento) as numeroAtendimentos
from medico med
join atendimento a on med.crm = a.crmMedico
where a.data > curdate() - interval 1 month
group by med.crm
having count(a.idAtendimento) > 5
order by numeroAtendimentos desc;


# 5
#explain
select p.nome as nomePaciente, count(a.idAtendimento) as numeroAtendimentos
from paciente p
join atendimento a on p.cpf = a.cpfPaciente
left join exame e on a.idAtendimento = e.idAtendimento
where e.idExame is null and a.data > curdate() - interval 3 month
group by p.cpf
order by numeroAtendimentos desc;
