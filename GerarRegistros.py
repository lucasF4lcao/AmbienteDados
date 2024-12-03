import pymysql
from faker import Faker

connection = pymysql.connect(
    host="localhost",
    user="root",
    password="12345678",
    database="hospital"
)

cursor = connection.cursor()

fake = Faker()

def inserir_pacientes_e_contatos(qtd_registros):
    print("Iniciando inserção de registros...")

    pacientes = []
    contatos = []

    for _ in range(qtd_registros):
        cpf = fake.unique.ssn().replace("-", "").replace(".", "")[:11]
        nome = fake.name()
        data_nasc = fake.date_of_birth(minimum_age=18, maximum_age=90).strftime('%Y-%m-%d')
        rua = fake.street_name()
        numero = fake.random_int(min=1, max=9999)
        pacientes.append((cpf, nome, data_nasc, rua, numero))

        contato_emergencia = fake.phone_number()
        contato_emergencia2 = fake.phone_number()
        contatos.append((contato_emergencia, contato_emergencia2, cpf))

    query_paciente = """
        INSERT INTO Paciente (cpf, nome, dataNasc, rua, numero)
        VALUES (%s, %s, %s, %s, %s)
    """
    batch_size = 10000
    for i in range(0, len(pacientes), batch_size):
        cursor.executemany(query_paciente, pacientes[i:i + batch_size])
        connection.commit()
        print(f"Lote {i // batch_size + 1} de Pacientes inserido!")

    query_contatos = """
        INSERT INTO Paciente_Contatos (contatoEmergencia, contatoEmergencia2, cpfPaciente)
        VALUES (%s, %s, %s)
    """
    for i in range(0, len(contatos), batch_size):
        cursor.executemany(query_contatos, contatos[i:i + batch_size])
        connection.commit()
        print(f"Lote {i // batch_size + 1} de Contatos inserido!")

    print("Inserção de pacientes e contatos concluída com sucesso!")

inserir_pacientes_e_contatos(1000000)

cursor.close()
connection.close()
