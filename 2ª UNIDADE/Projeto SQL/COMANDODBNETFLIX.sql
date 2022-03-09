CREATE DATABASE NETFLIX;
USE NETFLIX;
SHOW TABLES;
CREATE TABLE IF NOT EXISTS USUARIO(
    cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    telefone VARCHAR(15),
    cep VARCHAR(9) NOT NULL,
    e_num VARCHAR(30) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    complemento VARCHAR(100),
    c_nome VARCHAR(100) NOT NULL,
    c_num VARCHAR(20) NOT NULL,
    codigo INT NOT NULL,
    data_valid DATE NOT NULL,
    t_plano INT
);
CREATE TABLE IF NOT EXISTS PLANO(
    tipo INT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor FLOAT NOT NULL
);
CREATE TABLE IF NOT EXISTS PAG_MENSAL(
    cod INT PRIMARY KEY,
    u_cpf VARCHAR(14) NOT NULL,
    status INT NOT NULL,
    data DATE NOT NULL,
    valor FLOAT NOT NULL
);
CREATE TABLE IF NOT EXISTS VER(
    u_cpf VARCHAR(14) NOT NULL,
    v_id INT NOT NULL,
    avaliacao VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS VIDEO(
    id INT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    ano DATE NOT NULL,
    duracao INT NOT NULL,
    descricao VARCHAR(300) NOT NULL,
    diretor VARCHAR(50),
    t_video VARCHAR(50) NOT NULL,
    temporada INT,
    episodio INT
);
CREATE TABLE IF NOT EXISTS VIDEO_CATEGORIA(
    VC_id INT NOT NULL,
    categoria VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS PARTICIPA(
    P_id INT NOT NULL,
    p_nome VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS ATOR(
    nome VARCHAR(100) PRIMARY KEY,
    data_niver DATE NOT NULL,
    naturalizado VARCHAR(100)
);
ALTER TABLE USUARIO
ADD CONSTRAINT FOREIGN KEY (t_plano) REFERENCES PLANO(tipo);
ALTER TABLE PAG_MENSAL
ADD FOREIGN KEY (u_cpf) REFERENCES USUARIO(CPF);
ALTER TABLE VER
ADD FOREIGN KEY (u_cpf) REFERENCES USUARIO(CPF);
ALTER TABLE VER
ADD FOREIGN KEY (v_id) REFERENCES VIDEO(id);
ALTER TABLE VIDEO_CATEGORIA
ADD FOREIGN KEY (VC_id) REFERENCES VIDEO(id);
ALTER TABLE PARTICIPA
ADD FOREIGN KEY (p_id) REFERENCES VIDEO(id);
ALTER TABLE PARTICIPA
ADD FOREIGN KEY (p_nome) REFERENCES ATOR(nome);
/* populando as tabelas videos */
INSERT INTO VIDEO
VALUES(
        1,
        'Resident Evil o último capitulo',
        '2016-08-04',
        110,
        'O apocalipse foi só o começo ...',
        'Paul W.S. Anderson',
        'filme',
        NULL,
        NULL
    );
INSERT INTO VIDEO
VALUES(
        2,
        'Fragmentado',
        '2016-08-04',
        120,
        'Um homem com personalidade...',
        'M. Night shyamalan',
        'filme',
        NULL,
        NULL
    );
INSERT INTO VIDEO
VALUES(
        3,
        'Gantz:0',
        '2016-08-04',
        90,
        'Recém-mortos são ressucitados...',
        'Yasushi Kawamura',
        'filme',
        NULL,
        NULL
    );
INSERT INTO VIDEO
VALUES(
        4,
        'The Walking Dead',
        '2019-08-04',
        60,
        'Zumbis dominam o mundo dos vivos...',
        'Andrew Lincoln',
        'séries',
        1,
        1
    );
INSERT INTO VIDEO
VALUES(
        5,
        'The Walking Dead',
        '2019-08-04',
        60,
        'Zumbis dominam o mundo dos vivos...',
        'Andrew Lincoln',
        'séries',
        1,
        2
    );
/* populando as tabelas planos */
INSERT INTO PLANO
VALUES(1, '1 tela simultânea', 29.90);
INSERT INTO PLANO
VALUES(2, '2 tela simultânea', 39.90);
INSERT INTO PLANO
VALUES(3, '3 tela simultânea', 49.90);
/* populando as tabelas VIDEO_CATEGORIA */
INSERT INTO VIDEO_CATEGORIA
VALUES(1, "Ação e aventura");
INSERT INTO VIDEO_CATEGORIA
VALUES(1, "Suspense e ficção científica");
INSERT INTO VIDEO_CATEGORIA
VALUES(2, "Filmes de suspense");
INSERT INTO VIDEO_CATEGORIA
VALUES(2, "Suspense psicológicos");
INSERT INTO VIDEO_CATEGORIA
VALUES(3, "Anime de terror");
INSERT INTO VIDEO_CATEGORIA
VALUES(3, "Animes de ação");
INSERT INTO VIDEO_CATEGORIA
VALUES(4, "Séries basedas em HQ");
INSERT INTO VIDEO_CATEGORIA
VALUES(4, "Séries de terror");
INSERT INTO VIDEO_CATEGORIA
VALUES(5, "Séries basedas em HQ");
INSERT INTO VIDEO_CATEGORIA
VALUES(5, "Séries de terror");
/* populando as tabelas ator */
/* 1º video */
INSERT INTO ATOR
VALUES(
        'Milla Jovovich',
        '1980-01-01',
        NULL
    );
INSERT INTO ATOR
VALUES(
        'Iain Glen',
        '1980-01-01',
        NULL
    );
/* 2º video */
INSERT INTO ATOR
VALUES(
        'James McAvoy',
        '1980-01-01',
        NULL
    );
INSERT INTO ATOR
VALUES(
        'Anya Taylor-joy',
        '1980-01-01',
        NULL
    );
/* 3º video */
INSERT INTO ATOR
VALUES(
        'Daisuke Ono',
        '1980-01-01',
        NULL
    );
INSERT INTO ATOR
VALUES(
        'Tomohiro Kaku',
        '1980-01-01',
        NULL
    );
/* 4º e 5 video */
INSERT INTO ATOR
VALUES(
        'Andrew Lincoln',
        '1980-01-01',
        NULL
    );
INSERT INTO ATOR
VALUES(
        'Steven Yeun',
        '1980-01-01',
        NULL
    );
/* populando as tabelas PARTICIPA*/
INSERT INTO PARTICIPA
VALUES(1, 'Milla Jovovich');
INSERT INTO PARTICIPA
VALUES(1, 'Iain Glen');
/* 2º video */
INSERT INTO PARTICIPA
VALUES(2, 'James McAvoy');
INSERT INTO PARTICIPA
VALUES(2, 'Anya Taylor-joy');
/* 3º video */
INSERT INTO PARTICIPA
VALUES(3, 'Daisuke Ono');
INSERT INTO PARTICIPA
VALUES(3, 'Tomohiro Kaku');
/* 4º e 5 video */
INSERT INTO PARTICIPA
VALUES(4, 'Andrew Lincoln');
INSERT INTO PARTICIPA
VALUES(4, 'Steven Yeun');
INSERT INTO PARTICIPA
VALUES(5, 'Andrew Lincoln');
INSERT INTO PARTICIPA
VALUES(5, 'Steven Yeun');
/* populando as tabelas USUARIO*/
INSERT INTO USUARIO
VALUES(
        '428.613.496-20',
        'Mateus Ryan Cláudio da Rosa',
        'mateusryanclaudiodarosa_@yogoothies.com.br',
        'OteDZlY4gD',
        '(62) 3737-2110',
        '74473-817',
        '797',
        'Goiânia',
        'casa',
        'Mateus Rosa',
        '5186680985299035',
        354,
        '2023-03-29',
        1
    );
INSERT INTO USUARIO
VALUES(
        '728.335.984-24',
        'Hadassa Giovanna Almeida',
        'hhadassagiovannaalmeida@disparco.com.br',
        'JDaCYsjRm9',
        '(48) 3629-0282',
        '88161-378',
        '514',
        'Biguaçu',
        'casa',
        'Hadassa Almeida',
        '5105781903542155',
        645,
        '2023-03-29',
        2
    );
INSERT INTO USUARIO
VALUES(
        '704.549.577-34',
        'Isaac Nathan Fernando Almeida',
        'isaacnathanfernandoalmeida@eletrotex.com.br',
        'QTQQ2BCxKC',
        '(99) 98429-7777',
        '65604-617',
        '622',
        'Caxias',
        'casa',
        'Isaac Almeida',
        '5404664902399660',
        745,
        '2028-03-29',
        3
    );
/* populando as tabelas PAG_MENSAL
 status 0 não pago 1 pago
 */
INSERT INTO PAG_MENSAL
VALUES(
        1,
        '428.613.496-20',
        0,
        '2021-04-29',
        29.90
    );
INSERT INTO PAG_MENSAL
VALUES(
        2,
        '728.335.984-24',
        1,
        '2021-04-29',
        39.90
    );
INSERT INTO PAG_MENSAL
VALUES(
        3,
        '704.549.577-34',
        1,
        '2021-04-29',
        49.90
    );
/* ASISTIU TABLE VER  */
INSERT INTO VER
VALUES(
        '428.613.496-20',
        1,
        "MUITO BOM O FILME"
    );
INSERT INTO VER
VALUES(
        '428.613.496-20',
        2,
        "FILME MUITO LOUCO"
    );
INSERT INTO VER
VALUES(
        '728.335.984-24',
        4,
        "MELHOR FILM DE MORTOS VIVOS"
    );
INSERT INTO VER
VALUES(
        '704.549.577-34',
        4,
        "MELHOR FILM DE MORTOS VIVOS"
    );
INSERT INTO VER
VALUES(
        '704.549.577-34',
        3,
        NULL
    );
/* Realizando uma alteração */
UPDATE USUARIO
SET email = 'mateusRyan@gmail.com'
WHERE cpf = '428.613.496-20';
/* FILTRO  */
/* LISTAR TODOS OS USUARIOS */
SELECT *
FROM USUARIO
    /* LISTAR TODOS OS USUARIOS ESPECIFICO */
SELECT *
FROM USUARIO
WHERE t_plano = 1;
SELECT *
FROM USUARIO
WHERE t_plano = 1
    OR t_plano = 2;
/* LISTAR ATRIPUTOS ESPECIFICO DA TABELA */
SELECT CPF,
    NOME,
    T_PLANO
FROM USUARIO
WHERE t_plano = 1
    OR t_plano = 2;
/* FILTAR TABLES USUARIO + PLANO */
SELECT CPF,
    NOME,
    VALOR,
    DESCRICAO,
    TIPO
FROM USUARIO,
    PLANO
WHERE T_PLANO = TIPO;
/* FILTAR TABLES USUARIO + PAG_MENSAL */
SELECT CPF,
    NOME,
    VALOR,
    t_PLANO,
    STATUS
FROM USUARIO,
    PAG_MENSAL
WHERE CPF = U_CPF;
/* FILTAR TABLES VIDEO + PARTICIPA + ATOR */
SELECT ID,
    TITULO,
    P_NOME,
    DATA_NIVER
FROM VIDEO,
    PARTICIPA,
    ATOR
WHERE P_ID = ID
    AND P_NOME = ATOR.NOME;
/* quais filmes o usuario assistiu */
SELECT CPF,
    NOME,
    V_ID,
    titulo,
    AVALIACAO
FROM USUARIO,
    VER,
    VIDEO
WHERE CPF = U_CPF
    AND V_id = id;
/* filtro usando expressoes regulares */
SELECT NOME,
    CPF
FROM USUARIO
WHERE NOME LIKE '%Almeida%';
SELECT NOME,
    CPF,
    DATA_VALID
FROM USUARIO
WHERE DATA_VALID LIKE '2023-__-__';
/* filtro usando expressoes regulares ORDENADAS */
SELECT NOME,
    CPF,
    DATA_VALID
FROM USUARIO
WHERE DATA_VALID LIKE '2023-__-__'
ORDER BY NOME ASC;
;
/* filtro usando jOIN */
SELECT U.NOME,
    U.CPF,
    P.STATUS,
    P.VALOR
FROM USUARIO AS U
    JOIN PAG_MENSAL AS P ON U.CPF = P.U_CPF;
SELECT U.NOME,
    U.CPF,
    P.STATUS,
    P.VALOR
FROM USUARIO AS U
    LEFT JOIN PAG_MENSAL AS P ON U.CPF = P.U_CPF
ORDER BY U.NOME ASC;