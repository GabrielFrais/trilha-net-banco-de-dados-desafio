-- 1 - Buscar o nome e ano dos filmes
select nome, ano from filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome, ano from filmes order by ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select nome, ano, duracao from filmes
where nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
select nome, ano, duracao from filmes
where ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select nome, ano, duracao from filmes
where ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select nome, ano, duracao from filmes
where duracao > 100 and duracao < 150
order by duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select
	ano,
	count(*) as "Quantidade"
from filmes
group by ano
order by "Quantidade" desc;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select
	primeiro_nome,
	ultimo_nome,
	genero
from atores
where genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select
	primeiro_nome,
	ultimo_nome,
	genero
from atores
where genero = 'F'
order by primeiro_nome;

-- 10 - Buscar o nome do filme e o gênero
select
	f.nome,
	g.genero
from filmes f
inner join filmes_genero fg on f.id = fg.id_filme 
inner join generos g on fg.id_genero = g.id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select
	f.nome,
	g.genero
from filmes f
inner join filmes_genero fg on f.id = fg.id_filme 
inner join generos g on fg.id_genero = g.id
where g.genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select
	f.nome,
	a.primeiro_nome,
	a.ultimo_nome,
	ef.papel
from filmes f
inner join elenco_filme ef on f.id = ef.id_filme
inner join atores a on ef.id_ator = a.id;












