insert into acoes(descricao,nomeAcao) values('Deprecia��o de Bens','actDepreciacao');
GO
alter table bem add valorAquisicao money not null default(0);
GO
update bem
set valorAquisicao = valor