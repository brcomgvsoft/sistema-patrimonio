USE [patrimonio]

GO

IF NOT EXISTS(SELECT name FROM sysindexes WHERE name = 'IxIdenfificacao')
CREATE UNIQUE NONCLUSTERED INDEX [IxIdenfificacao] ON [dbo].[bem]
(
	[idenficacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)

GO


