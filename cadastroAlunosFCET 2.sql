CREATE DATABASE cadastro_alunos_fcet;
USE cadastro_alunos_fcet;

CREATE TABLE alunos(
	ra_id VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(50),
    curso VARCHAR(50)
);

CREATE TABLE disciplinas(
	disciplina_id INT PRIMARY KEY,
    nome VARCHAR(100),
    professor VARCHAR(100),
    ambiente VARCHAR(100)
);

CREATE TABLE cursos(
	curso_id INT PRIMARY KEY,
	nome VARCHAR(50),
    coordenador VARCHAR(50),
    FOREIGN KEY(curso_id) REFERENCES disciplinas(disciplina_id)
);

CREATE TABLE matriculas(
	id INT PRIMARY KEY AUTO_INCREMENT,
    ra_id VARCHAR(10),
    curso_id INT,
    disciplina_id INT, -- DEVERIA SER DADO UNICO
    situacao VARCHAR(10), -- Aprovado / Pendente / Cursando
    FOREIGN KEY(ra_id) REFERENCES alunos(ra_id),
    FOREIGN KEY(curso_id) REFERENCES cursos(curso_id)
);

CREATE TABLE notas(
	nota_id INT PRIMARY KEY AUTO_INCREMENT,
    ra_id VARCHAR(10),
    disciplina_id INT,
    tipo_nota VARCHAR(50), -- exemplo: P1 / P2 / A1 / A2 / PS ...
    valor DECIMAL(2,2),
    data_avaliacao DATE,
    FOREIGN KEY(ra_id) REFERENCES alunos(ra_id),
    FOREIGN KEY(disciplina_id) REFERENCES disciplinas(disciplina_id)  
);
-- ALUNOS --
INSERT INTO alunos (ra_id, nome, curso) VALUES ('00318945', 'Caio Pereira', 'Ciencia da Computacao');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('00319034', 'Ricardo Lafaete', 'Ciencia da Computacao');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('00456789', 'Pedro Loos', 'Ciencia da Computacao');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('00189843', 'Gabriel Monteiro', 'Ciencia da Computacao');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('00236792', 'Julia Gashido', 'Ciencia da Computacao');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('00985412', 'Rebeca Andrade', 'Ciencia da Computacao');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('00766678', 'Julio Nobre', 'Ciencia da Computacao');

INSERT INTO alunos (ra_id, nome, curso) VALUES ('53434221', 'Jorge do Santos', 'Jogos Digitais');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('79694321', 'Amanda Regina', 'Jogos Digitais');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('12355677', 'Luis Fernando', 'Jogos Digitais');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('79899221', 'Daniela Andrade', 'Jogos Digitais');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('12125553', 'Rafael Santos', 'Jogos Digitais');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('02435556', 'Lucia Aralto', 'Jogos Digitais');


INSERT INTO alunos (ra_id, nome, curso) VALUES ('59677823', 'Isabela Gouvea', 'Design');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('00877422', 'Regina Atros', 'Design');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('24232326', 'Gabriel do Santos', 'Design');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('21232489', 'Gustavo Queiroz', 'Design');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('37444986', 'David Matede', 'Design');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('00323198', 'Lidia Hernandez', 'Design');


INSERT INTO alunos (ra_id, nome, curso) VALUES ('01029344', 'Lucas de Niz', 'Engenharia Biomedica');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('12938344', 'Matheus Hernandez', 'Engenharia Biomedica');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('54545455', 'Clara Martins', 'Engenharia Biomedica');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('99996666', 'Gustavo Cassaro', 'Engenharia Biomedica');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('54536756', 'Luciene Amoroso', 'Engenharia Biomedica');

INSERT INTO alunos (ra_id, nome, curso) VALUES ('23323596', 'Italo Amaral', 'Sistemas de Informacao');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('23676788', 'Gabriela Fontes', 'Sistemas de Informacao');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('45497867', 'Frankson Bones', 'Sistemas de Informacao');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('32328824', 'João Pedro', 'Sistemas de Informacao');
INSERT INTO alunos (ra_id, nome, curso) VALUES ('58458485', 'Gustavo Basso', 'Sistemas de Informacao');

-- CURSOS --
INSERT INTO cursos (curso_id, nome, coordenador) VALUES ('1', 'Ciencia da Computacao', 'Savino Morgara'); 
INSERT INTO cursos (curso_id, nome, coordenador) VALUES ('2', 'Engenharia Biomedica', 'Gabriela Moraz'); 
INSERT INTO cursos (curso_id, nome, coordenador) VALUES ('3', 'Sistemas de Informacao', 'Ricardo Teixeira'); 
INSERT INTO cursos (curso_id, nome, coordenador) VALUES ('4', 'Jogos Digitais', 'David Lacerda'); 
INSERT INTO cursos (curso_id, nome, coordenador) VALUES ('5', 'Design', 'Rafael Santos'); 

-- DISCIPLINAS --
INSERT INTO disciplinas (disciplina_id, nome, professor, ambiente) VALUES ('1', 'Programacao', 'Julio', 'Predio 03');
INSERT INTO disciplinas (disciplina_id, nome, professor, ambiente) VALUES ('2', 'Matematica', 'Maria Inez', 'Predio 02');
INSERT INTO disciplinas (disciplina_id, nome, professor, ambiente) VALUES ('3', 'Calculo 1', 'Lydia', 'Predio 03');
INSERT INTO disciplinas (disciplina_id, nome, professor, ambiente) VALUES ('4', 'Projeto de Software', 'Italo', 'Predio 01');
INSERT INTO disciplinas (disciplina_id, nome, professor, ambiente) VALUES ('5', 'Algoritmos', 'Lisbete', 'Predio 03');

-- MATRICULAS --
INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00318945', '1', 'Cursando');
INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00318945', '2', 'Cursando');
INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00318945', '3', 'Cursando');
INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00318945', '4', 'Cursando');
INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00318945', '5', 'Aprovado');

INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00319034', '1', 'Cursando');
INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00319034', '2', 'Cursando');
INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00319034', '3', 'Cursando');

INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00456789', '3', 'Cursando');
INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00456789', '4', 'Cursando');

INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00985412', '5', 'Aprovado');
INSERT INTO matriculas (ra_id, disciplina_id, situacao) VALUES ('00985412', '4', 'Cursando');



INSERT INTO matriculas (id, ra_id, disciplina_id, situacao) VALUES ('00318945', '2', 'Cursando');

