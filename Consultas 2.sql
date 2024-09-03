-- Questão 1: Saber quem são os alunos da Faculdade
SELECT * FROM alunos 
ORDER BY curso;

-- Questão 2: Saber quais alunos estão matriculados em determinada disciplina
SELECT a.nome AS alunos_na_disciplina FROM alunos a 
INNER JOIN matriculas m ON a.ra_id = m.ra_id
INNER JOIN disciplinas d ON m.disciplina_id = d.disciplina_id
WHERE d.nome = 'Programacao'; -- Para saber sobre as demais disciplinas, apenas troque o nome

-- Questão 3: Saber quantos alunos tem em cada curso
SELECT curso, COUNT(*) AS total_alunos_do_curso FROM alunos 
GROUP BY curso;

-- Questão 4: Saber se tem alguma disciplina com menos que 5 alunos
SELECT d.nome AS nome_da_disciplina, COUNT(*) AS quantidade_de_alunos FROM disciplinas d 
INNER JOIN matriculas m ON d.disciplina_id = m.disciplina_id
GROUP BY d.nome
HAVING COUNT(*) < 5;

-- Questão 5: Saber quais alunos não realizaram a matricula
SELECT * FROM alunos
WHERE ra_id NOT IN(
	SELECT ra_id FROM matriculas
);

-- Questão 6: Saber quais alunos foram aprovados em determinada disciplina.
SELECT a.nome AS nome_do_aluno_aprovado_na_disciplina FROM alunos a
INNER JOIN matriculas m ON a.ra_id = m.ra_id
INNER JOIN disciplinas d ON m.disciplina_id = d.disciplina_id
WHERE d.nome = 'Algoritmos' AND m.situacao = 'Aprovado';
