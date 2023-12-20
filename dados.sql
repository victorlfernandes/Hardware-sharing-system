-- USUARIO
INSERT INTO USUARIO (EMAIL, NOME, CARGO, TELEFONE, CEP, NUMERO, COMPLEMENTO)
    VALUES ('email@gmail.com', 'Nome Pessoa', 'Comum', 16999999999, 000111222, 01, 'casa');
INSERT INTO USUARIO
    VALUES ('email2@hotmail.com', 'Pessoa Nome', 'Administrador', 16988888888, 010101010, 02, 'ap01');
INSERT INTO USUARIO
    VALUES ('email3@gmail.com', 'Nome Pessoa3', 'Comum', 1677777777, 111222333, 02, 'casa');
INSERT INTO USUARIO
    VALUES ('email4@gmail.com', 'Nome Pessoa4', 'Administrador', 1666666666, 222333444, 03, 'apto02');
INSERT INTO USUARIO
    VALUES ('email5@gmail.com', 'Nome Pessoa5', 'Comum', 1655555555, 333444555, 204, 'casa');
INSERT INTO USUARIO
    VALUES ('email6@gmail.com', 'Nome Pessoa6', 'Comum', 1644444444, 444555666, 1024, 'apto22');
-- ...


-- COMUM
INSERT INTO COMUM (USUARIO, FUNCAO)
    VALUES ('email@gmail.com', 'Escola');
INSERT INTO COMUM
    VALUES ('email3@gmail.com', 'Colaborador');
INSERT INTO COMUM
    VALUES ('email5@gmail.com', 'Escola');
INSERT INTO COMUM
    VALUES ('email6@gmail.com', 'Colaborador');
-- ...


-- ADMINISTRADOR
INSERT INTO ADMINISTRADOR (USUARIO)
    VALUES ('email2@hotmail.com');
INSERT INTO ADMINISTRADOR
    VALUES ('email4@gmail.com');
-- ...


-- REMOVER USUARIO
INSERT INTO REMOVER_USUARIO (USUARIO_REMOVIDO, ADMINISTRADOR)
    VALUES ('email5@gmail.com', 'email2@hotmail.com');
INSERT INTO REMOVER_USUARIO
    VALUES ('email6@hotmail.com', 'email4@gmail.com');
-- ...


-- ESCOLA
INSERT INTO ESCOLA (COMUM, CODIGO_MEC, NOME, CPF, TELEFONE, ADMINISTRADOR)
    VALUES ('email@gmail.com', 12345678, 'Nome Escola', '123456789', 1699999999, 'email2@hotmail.com');
INSERT INTO ESCOLA
    VALUES ('email5@gmail.com', 23456789, 'Nome Escola2', '234567891', 1655555555, 'email2@hotmail.com');
-- ...


-- ALUNO
INSERT INTO ALUNO (CPF, ESCOLA, NOME, TELEFONE, EMAIL, NASCIMENTO, CEP, NUMERO, COMPLEMENTO)
    VALUES ('123456789', 'email@gmail.com', 'Nome Aluno', 16912345678, 'aluno@gmail.com', TO_DATE('02/10/2000', 'DD/MM/YYYY'), 0123456789, 07, 'casa');
INSERT INTO ALUNO
    VALUES ('234567891', 'email@gmail.com', 'Nome Aluno2', 16923456789, 'aluno2@gmail.com', TO_DATE('09/02/1987', 'DD/MM/YYYY'), 1234567890, 08, 'apto15');
INSERT INTO ALUNO
    VALUES ('345678910', 'email@gmail.com', 'Nome Aluno3', 16934567891, 'aluno3@gmail.com', TO_DATE('23/07/2004', 'DD/MM/YYYY'), 2345678901, 09, 'casa');
INSERT INTO ALUNO
    VALUES ('456789101', 'email@gmail.com', 'Nome Aluno4', 16945678910, 'aluno4@gmail.com', TO_DATE('15/11/2002', 'DD/MM/YYYY'), 3456789012, 10, 'apto223 bloco04');
-- ...


-- COLABORADOR
INSERT INTO COLABORADOR (COMUM, TIPO, CPF_CNPJ, DATA_NASCIMENTO)
    VALUES ('email3@gmail.com', 'Pessoa Fisica', '28473295', TO_DATE('02/08/1800', 'DD/MM/YYYY'));
INSERT INTO COLABORADOR (COMUM, TIPO, CPF_CNPJ, DATA_NASCIMENTO, RAZAO_SOCIAL)
    VALUES ('email6@gmail.com', 'Pessoa Juridica', '423795245', TO_DATE('22/12/1999', 'DD/MM/YYYY'), 'Nem Sei');
-- ...
    

-- CATEGORIA
INSERT INTO CATEGORIA (NOME, DESCRICAO, ADMINISTRADOR)
    VALUES ('Livros', 'Livros para ler', 'email4@gmail.com');
INSERT INTO CATEGORIA
    VALUES ('Eletrônicos', 'Eletrônicos eletrônicos', 'email2@hotmail.com');
-- ... 


-- ITEM
INSERT INTO ITEM (SERIAL, VALOR, DESCRICAO, CATEGORIA, ALUNO, COLABORADOR)
    VALUES ('d0i2dj4u2f', 234, 'alguma coisa cara', 'Eletrônicos', '123456789', 'email3@gmail.com');
INSERT INTO ITEM
    VALUES ('da423j5', 1, 'livro de 1 real', 'Livros', '234567891', 'email3@gmail.com');
-- ... 


-- PERFIL
INSERT INTO PERFIL (EMAIL, NOME, AVALIACOES, ADMINISTRADOR)
    VALUES ('email@gmail.com', 'Nome Perfil', 'Avaliacoes', 'email4@gmail.com');
INSERT INTO PERFIL
    VALUES ('email3@gmail.com', 'Nome Perfil2', 'Avaliacoes2', 'email2@hotmail.com');
-- ... 


-- AVALIA
INSERT INTO AVALIA (USUARIO1, USUARIO2, NOTA)
    VALUES ('email@gmail.com', 'email3@gmail.com', 4);
INSERT INTO AVALIA
    VALUES ('email3@gmail.com', 'email@gmail.com', 7);
-- ... 


-- CHAT
INSERT INTO CHAT (USUARIO1, USUARIO2, DATA_HORA, TEXTO)
    VALUES ('email@gmail.com', 'email3@gmail.com', TO_TIMESTAMP('2014-07-02 06:14:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 'bla bla bla bla bla');
INSERT INTO CHAT
    VALUES ('email3@gmail.com', 'email@gmail.com', TO_TIMESTAMP('2014-07-02 06:14:00.742000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 'bla bla bla bla');
-- ... 


-- POST
INSERT INTO POST (ID, EMAIL, DATA_HORA, TITULO, IMAGEM, TIPO)
    VALUES (129, 'email@gmail.com', TO_TIMESTAMP('2014-07-01 10:06:27.898000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 'Alguma coisa', 'fhasdlufhehp', 'Doacao');
INSERT INTO POST
    VALUES (129309, 'email3@gmail.com', TO_TIMESTAMP('2020-03-22 04:33:01.122000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 'Outra coisa', 'fdifyasofe', 'Solicitacao');
-- ... 


-- EXCLUI POST
INSERT INTO EXCLUI_POST (ID_POST, ADMINISTRADOR)
    VALUES (129, 'email2@hotmail.com');
INSERT INTO EXCLUI_POST
    VALUES (129309, 'email4@gmail.com');
-- ... 


-- COMENTARIO
INSERT INTO COMENTARIO (ID_POST, EMAIL, DATA_HORA, CONTEUDO)
    VALUES (129, 'email@gmail.com', TO_TIMESTAMP('2014-07-05 02:55:40.040000000', 'YYYY-MM-DD HH24:MI:SS.FF'), 'primeiro kk');
INSERT INTO COMENTARIO
    VALUES (129309, 'email3@gmail.com', TO_TIMESTAMP('2021-03-22 04:33:01.122000000', 'YYYY-MM-DD HH24:MI:SS.FF'), '1 ano');
-- ...


-- TRANSACAO
INSERT INTO TRANSACAO (ITEM, USUARIO, DATA_HORA)
    VALUES ('d0i2dj4u2f', 'email3@gmail.com', TO_TIMESTAMP('2014-07-03 07:49:17.213000000', 'YYYY-MM-DD HH24:MI:SS.FF'));
INSERT INTO TRANSACAO
    VALUES ('da423j5', 'email6@gmail.com', TO_TIMESTAMP('2020-03-23 05:29:15.666000000', 'YYYY-MM-DD HH24:MI:SS.FF'));
-- ...