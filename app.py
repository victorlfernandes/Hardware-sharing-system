import psycopg2

conn = psycopg2.connect(database="postgres",
                        host="localhost",
                        user="postgres",
                        password="postgres",
                        port="5432")


def main():
    cursor = conn.cursor()

    comando = input('Para começar, digite um dos seguintes comandos: registrar, buscar, sair\n')

    while comando != 'sair':

        if comando == 'registrar':
            email = input('Digite o email do usuário que deseja cadastrar: ')

            nome = input('Digite o nome do usuário que deseja cadastrar: ')

            cargo = input('Digite o cargo do usuário que deseja cadastrar (comum, administrador): ')
            while cargo != 'comum' and cargo != 'administrador':
                print('Cargo inválido! O cargo deve ser de um dos seguintes valores: comum ou administrador')
                cargo = input('Digite o cargo do usuário que deseja cadastrar: ')

            if cargo == 'comum':
                funcao = input('Digite a função do usuário comum (colaborador, escola): ')
                while funcao != 'colaborador' and funcao != 'escola':
                    print('Função inválida! A função deve ser um dos seguintes valores: colaborador ou escola')
                    funcao = input('Digite a função do usuário comum (colaborador, escola): ')

            telefone = int(input('Digite o telefone do usuário que deseja cadastrar: '))

            cep = int(input('Digite o cep do usuário que deseja cadastrar: '))

            numero = int(input('Digite o numero do usuário que deseja cadastrar: '))

            complemento = input('Digite o complemento do usuário que deseja cadastrar: ')

            cursor.execute(
                "INSERT INTO USUARIO VALUES (%s, %s, %s, %s, %s, %s, %s)",
                (email, nome, cargo, telefone, cep, numero, complemento)
            )

            if cargo == 'comum':
                cursor.execute(
                    "INSERT INTO COMUM VALUES (%s, %s)",
                    (email, funcao)
                )
            elif cargo == 'administrador':
                cursor.execute(
                    "INSERT INTO ADMINISTRADOR VALUES (\'" + email + "\')"
                )

            conn.commit()

            print('Usuário cadastrado com sucesso!')

        elif comando == 'buscar':
            usuario = input('Digite o email do usuário que deseja buscar a média de avaliações: ')
            cursor.execute(
                """
                SELECT U.NOME, U.EMAIL, AVG(A.NOTA) 
                FROM USUARIO U 
                LEFT JOIN AVALIA A ON U.EMAIL = A.USUARIO2 
                WHERE U.EMAIL = \'""" + usuario + """\'
                GROUP BY U.NOME, U.EMAIL"""

            )
            nome, email, media = cursor.fetchone()
            print('Nome: ' + nome)
            print('Email: ' + email)
            print('Media: ' + str(media)[:4])

        comando = input('Para prosseguir, digite o próximo comando: ')

    print('Encerrando programa...')
    conn.close()


if __name__ == '__main__':
    main()
