-- DEFINE QUAL BANCO DE DADOS ESTÁ SENDO UTILIZADO
USE Ex_Gufi;

 --DQL SELECT

SELECT NomeUsuario, Email, TipoUsuario.IdTipoUsuario,DataNascimento,Genero FROM Usuario
INNER JOIN TipoUsuario ON Usuario.IdTipousuario = TipoUsuario.IdTipoUsuario;

SELECT CNPJ,NomeFantasia,Endereco FROM Instituicao;

SELECT TituloTipoEvento FROM  TipoEvento;

SELECT NomeEvento,DataEvento,Descricao,AcessoLivre,TipoEvento.TituloTipoEvento,Instituicao.NomeFantasia, Instituicao.CNPJ ,Instituicao.Endereco FROM Evento
INNER JOIN  Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN TipoEvento ON Evento.IdTipoEvento =  TipoEvento.IdTipoEvento;

SELECT NomeEvento,DataEvento,Descricao,AcessoLivre,TipoEvento.TituloTipoEvento,Instituicao.NomeFantasia, Instituicao.CNPJ ,Instituicao.Endereco FROM Evento
INNER JOIN  Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN TipoEvento ON Evento.IdTipoEvento =  TipoEvento.IdTipoEvento
WHERE Evento.AcessoLivre = 1;

SELECT NomeEvento,DataEvento,Descricao,AcessoLivre,TipoEvento.TituloTipoEvento,Instituicao.NomeFantasia, Instituicao.CNPJ ,Instituicao.Endereco ,Usuario.Email, Usuario.Genero, Usuario.DataNascimento, Usuario.NomeUsuario FROM Evento
INNER JOIN  Instituicao ON Evento.IdInstituicao = Instituicao.IdInstituicao
INNER JOIN TipoEvento ON Evento.IdTipoEvento =  TipoEvento.IdTipoEvento
INNER JOIN Usuario ON Usuario.IdUsuario = Usuario.IdUsuario
WHERE Usuario.IdUsuario = 2;

--EXTRAS
SELECT Evento.NomeEvento, TipoEvento.TituloTipoEvento, Evento.DataEvento, Evento.Descricao,
Instituicao.CNPJ, Instituicao.NomeFantasia, Instituicao.Endereco,
CASE
	WHEN AcessoLivre = 1 THEN 'Público'
	WHEN AcessoLivre = 0 THEN 'Privado'
	END AS AcessoLivre
FROM Evento
INNER JOIN TipoEvento ON TipoEvento.IdTipoEvento = Evento.IdEvento
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao




