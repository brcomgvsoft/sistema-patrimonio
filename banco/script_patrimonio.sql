USE [master]
GO
/****** Object:  Database [patrimonio]    Script Date: 06/12/2011 13:20:17 ******/
CREATE DATABASE [patrimonio] 
GO
ALTER DATABASE [patrimonio] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [patrimonio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [patrimonio] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [patrimonio] SET ANSI_NULLS OFF
GO
ALTER DATABASE [patrimonio] SET ANSI_PADDING OFF
GO
ALTER DATABASE [patrimonio] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [patrimonio] SET ARITHABORT OFF
GO
ALTER DATABASE [patrimonio] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [patrimonio] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [patrimonio] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [patrimonio] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [patrimonio] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [patrimonio] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [patrimonio] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [patrimonio] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [patrimonio] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [patrimonio] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [patrimonio] SET  DISABLE_BROKER
GO
ALTER DATABASE [patrimonio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [patrimonio] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [patrimonio] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [patrimonio] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [patrimonio] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [patrimonio] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [patrimonio] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [patrimonio] SET  READ_WRITE
GO
ALTER DATABASE [patrimonio] SET RECOVERY SIMPLE
GO
ALTER DATABASE [patrimonio] SET  MULTI_USER
GO
ALTER DATABASE [patrimonio] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [patrimonio] SET DB_CHAINING OFF
GO
USE [patrimonio]
GO
/****** Object:  Table [dbo].[grupo]    Script Date: 06/12/2011 13:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[grupo](
	[grupoId] [varchar](10) NOT NULL,
	[descricao] [varchar](100) NOT NULL,
	[empresaId] [int] NOT NULL,
	[vGrupoId] [varchar](10) NOT NULL,
 CONSTRAINT [PK_grupo] PRIMARY KEY CLUSTERED 
(
	[grupoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gestao]    Script Date: 06/12/2011 13:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gestao](
	[gestaoId] [int] IDENTITY(1,1) NOT NULL,
	[gestao] [varchar](255) NOT NULL,
 CONSTRAINT [PK_gestao] PRIMARY KEY CLUSTERED 
(
	[gestaoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fornecedor]    Script Date: 06/12/2011 13:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fornecedor](
	[fornecedorId] [int] IDENTITY(1,1) NOT NULL,
	[razaoSocial] [varchar](100) NOT NULL,
	[cnpj] [varchar](20) NULL,
 CONSTRAINT [PK_fornecedor] PRIMARY KEY CLUSTERED 
(
	[fornecedorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pessoa]    Script Date: 06/12/2011 13:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pessoa](
	[pessoaId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[tipo] [smallint] NOT NULL,
	[logradouro] [varchar](100) NULL,
	[municipio] [varchar](100) NULL,
	[cep] [varchar](10) NULL,
	[usuario] [bit] NOT NULL,
	[cnpjCpf] [varchar](20) NULL,
 CONSTRAINT [PK_pessoa] PRIMARY KEY CLUSTERED 
(
	[pessoaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[local]    Script Date: 06/12/2011 13:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[local](
	[localId] [varchar](10) NOT NULL,
	[titulo] [varchar](100) NOT NULL,
	[vLocalId] [varchar](10) NULL,
	[pessoaId] [int] NULL,
 CONSTRAINT [PK_local] PRIMARY KEY CLUSTERED 
(
	[localId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[estado]    Script Date: 06/12/2011 13:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estado](
	[estadoId] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](100) NOT NULL,
 CONSTRAINT [PK_estado] PRIMARY KEY CLUSTERED 
(
	[estadoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 06/12/2011 13:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empresa](
	[empresaId] [int] IDENTITY(1,1) NOT NULL,
	[razaoSocial] [varchar](100) NOT NULL,
	[nomeFantasia] [varchar](100) NOT NULL,
	[chave] [varchar](max) NOT NULL,
	[pessoaId] [int] NULL,
	[logotipo] [image] NULL,
 CONSTRAINT [PK_empresa] PRIMARY KEY CLUSTERED 
(
	[empresaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarioAcao]    Script Date: 06/12/2011 13:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarioAcao](
	[usuarioId] [int] NOT NULL,
	[acaoId] [int] NOT NULL,
 CONSTRAINT [PK_usuarioAcao] PRIMARY KEY CLUSTERED 
(
	[usuarioId] ASC,
	[acaoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[acoes]    Script Date: 06/12/2011 13:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[acoes](
	[acaoId] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NOT NULL,
	[nomeAcao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_acoes] PRIMARY KEY CLUSTERED 
(
	[acaoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vUsuarioAcao]    Script Date: 06/12/2011 13:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUsuarioAcao]
AS
SELECT     dbo.acoes.acaoId, dbo.acoes.descricao, dbo.acoes.nomeAcao, dbo.usuarioAcao.usuarioId
FROM         dbo.acoes INNER JOIN
                      dbo.usuarioAcao ON dbo.acoes.acaoId = dbo.usuarioAcao.acaoId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "acoes"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 99
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "usuarioAcao"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 84
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vUsuarioAcao'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vUsuarioAcao'
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 06/12/2011 13:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuario](
	[usuarioId] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](10) NOT NULL,
	[senha] [varchar](max) NOT NULL,
	[pessoaId] [int] NOT NULL,
	[desativado] [bit] NOT NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[usuarioId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bem]    Script Date: 06/12/2011 13:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bem](
	[bemId] [int] IDENTITY(1,1) NOT NULL,
	[identificacao] [varchar](50) NOT NULL,
	[descricao] [varchar](255) NOT NULL,
	[grupoId] [varchar](10) NOT NULL,
	[estadoId] [int] NOT NULL,
	[localId] [varchar](10) NOT NULL,
	[gestaoId] [int] NULL,
	[valor] [money] NOT NULL,
	[tipoIdentificacao] [int] NOT NULL,
	[subgrupoId] [varchar](10) NULL,
	[subLocalId] [varchar](10) NULL,
	[tipoAquisicao] [int] NOT NULL,
	[quantidade] [float] NOT NULL,
	[identificacaoAnterior] [varchar](50) NULL
 CONSTRAINT [PK_bem] PRIMARY KEY CLUSTERED 
(
	[bemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[grupoBem]    Script Date: 06/12/2011 13:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[grupoBem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bemId] [int] NOT NULL,
	[grupoId] [varchar](10) NOT NULL,
	[dataInicio] [smalldatetime] NOT NULL,
	[dataFim] [smalldatetime] NULL,
 CONSTRAINT [PK_grupoBem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[estadoBem]    Script Date: 06/12/2011 13:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estadoBem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bemId] [int] NOT NULL,
	[estadoId] [int] NOT NULL,
	[dataInicio] [smalldatetime] NOT NULL,
	[dataFim] [smalldatetime] NULL,
 CONSTRAINT [PK_estadoBem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[convenio]    Script Date: 16/06/2014 09:27:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[convenio](
	[convenioId] [int] IDENTITY(1,1) NOT NULL,
	[numeroConvenio] [varchar](50) NOT NULL,
	[convenioTipoId] [int] NOT NULL,
 CONSTRAINT [PK_convenio] PRIMARY KEY CLUSTERED 
(
	[convenioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empenho]    Script Date: 11/06/2014 11:28:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[empenho](
	[empenhoId] [int] IDENTITY(1,1) NOT NULL,
	[numeroEmpenho] [varchar](50) NOT NULL,
 CONSTRAINT [PK_empenho] PRIMARY KEY CLUSTERED 
(
	[empenhoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[processo]    Script Date: 11/06/2014 11:30:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[processo](
	[processoId] [int] IDENTITY(1,1) NOT NULL,
	[numeroProcesso] [varchar](50) NOT NULL,
 CONSTRAINT [PK_processo] PRIMARY KEY CLUSTERED 
(
	[processoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[modalidade]    Script Date: 11/06/2014 11:31:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[modalidade](
	[modalidadeId] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](100) NOT NULL,
 CONSTRAINT [PK_modalidade] PRIMARY KEY CLUSTERED 
(
	[modalidadeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[convenioTipo]    Script Date: 16/06/2014 09:24:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[convenioTipo](
	[convenioTipoId] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ConvenioTipo] PRIMARY KEY CLUSTERED 
(
	[convenioTipoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[bemAquisicao]    Script Date: 06/12/2011 13:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bemAquisicao](
	[bemId] [int] NOT NULL,
	[data] [smalldatetime] NOT NULL,
	[dataNota] [smalldatetime] NOT NULL,
	[fornecedorId] [int] NOT NULL,
	[numeroNota] [varchar](100) NOT NULL,
	[empenhoId] [int] NULL,
	[processoId] [int] NULL,
	[convenioId] [int] NULL,
	[modalidadeId] [int] NULL,
 CONSTRAINT [PK_bemAquisicao] PRIMARY KEY CLUSTERED 
(
	[bemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[transferencia]    Script Date: 06/12/2011 13:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[transferencia](
	[transferenciaId] [int] IDENTITY(1,1) NOT NULL,
	[origemId] [varchar](10) NOT NULL,
	[destinoId] [varchar](10) NOT NULL,
	[data] [smalldatetime] NOT NULL,
	[receptorId] [int] NOT NULL,
	[cedenteId] [int] NOT NULL,
	[usuarioId] [int] NOT NULL,
	[concluida] [bit] NOT NULL,
	[tipo] [smallint] NOT NULL,
	[origemSubLocal] [varchar](10) NOT NULL,
	[destinoSubLocal] [varchar](10) NOT NULL,
 CONSTRAINT [PK_transferencia] PRIMARY KEY CLUSTERED 
(
	[transferenciaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[transferenciaBem]    Script Date: 06/12/2011 13:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transferenciaBem](
	[transferenciaId] [int] NOT NULL,
	[bemId] [int] NOT NULL,
	[bemEstadoId] [int] NOT NULL,
 CONSTRAINT [PK_transferenciaBem] PRIMARY KEY CLUSTERED 
(
	[transferenciaId] ASC,
	[bemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_finalizaTransferencia]    Script Date: 06/12/2011 13:20:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_finalizaTransferencia](@transferenciaId int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Variaveis de controle.
	DECLARE @tipo int;
	DECLARE @origemId varchar(10);
	DECLARE @origemSubLocal varchar(10);
	DECLARE @cedenteId int;
	DECLARE @destinoId varchar(10);
	DECLARE @destinoSubLocal varchar(10);
	DECLARE @receptorId int;
	DECLARE @concluida bit;
	
	-- Recupera informações da Transferência.
	select	@tipo = tipo
			,@origemId   = origemId
			,@origemSubLocal = origemSubLocal
			,@cedenteId  = cedenteId
			,@destinoId  = destinoId
			,@destinoSubLocal = destinoSubLocal
			,@receptorId = receptorId
			,@concluida  = concluida
	from transferencia
	where transferenciaId = @transferenciaId
	
	begin try
		-- Verifica se transferência continua em aberto.
		if (@concluida = 0)
		begin
			-- Inicia uma nova transação.
			begin transaction
			
			-- Atualiza localização do bens.
			update bem
			set bem.localId = @destinoId,
				bem.subLocalId = @destinoSubLocal
			from bem inner join transferenciaBem 
						on bem.bemId = transferenciaBem.bemId
			where transferenciaBem.transferenciaId = @transferenciaId
			and bem.localId = @origemId
			and bem.subLocalId = @origemSubLocal
			
			-- Verifica se a movimentação executada e do tipo transferência.
			if (@tipo = 2)
			begin
				-- Atualiza responsavel pelo local.
				update [local]
				set pessoaId = @receptorId
				where localId = @destinoId; 
			end
			
			-- Atualiza estado da transferência.
			update transferencia
			set concluida = 1
			where transferenciaId = @transferenciaId
					
			-- Commita transação ativas no escopo.
			while (@@TRANCOUNT > 0)
			begin
				commit transaction	
			end
		end
	end try
	begin catch
		-- Cancela transações ativas no escopo.
		while (@@TRANCOUNT > 0)
		begin
			rollback transaction
		end
	end catch

END
GO
/****** Object:  Default [DF_grupo_vGrupoId]    Script Date: 06/12/2011 13:20:20 ******/
ALTER TABLE [dbo].[grupo] ADD  CONSTRAINT [DF_grupo_vGrupoId]  DEFAULT ((0)) FOR [vGrupoId]
GO
/****** Object:  Default [DF_pessoa_tipo]    Script Date: 06/12/2011 13:20:20 ******/
ALTER TABLE [dbo].[pessoa] ADD  CONSTRAINT [DF_pessoa_tipo]  DEFAULT ((1)) FOR [tipo]
GO
/****** Object:  Default [DF_pessoa_usuario]    Script Date: 06/12/2011 13:20:20 ******/
ALTER TABLE [dbo].[pessoa] ADD  CONSTRAINT [DF_pessoa_usuario]  DEFAULT ((0)) FOR [usuario]
GO
/****** Object:  Default [DF_local_vLocalId]    Script Date: 06/12/2011 13:20:20 ******/
ALTER TABLE [dbo].[local] ADD  CONSTRAINT [DF_local_vLocalId]  DEFAULT ((0)) FOR [vLocalId]
GO
/****** Object:  Default [DF_empresa_chave]    Script Date: 06/12/2011 13:20:20 ******/
ALTER TABLE [dbo].[empresa] ADD  CONSTRAINT [DF_empresa_chave]  DEFAULT (newid()) FOR [chave]
GO
/****** Object:  Default [DF_usuario_desativado]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[usuario] ADD  CONSTRAINT [DF_usuario_desativado]  DEFAULT ((1)) FOR [desativado]
GO
/****** Object:  Default [DF_bem_valor]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bem] ADD  CONSTRAINT [DF_bem_valor]  DEFAULT ((0)) FOR [valor]
GO
/****** Object:  Default [DF_bem_tipoIdentificacao]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bem] ADD  CONSTRAINT [DF_bem_tipoIdentificacao]  DEFAULT ((1)) FOR [tipoIdentificacao]
GO
/****** Object:  Default [DF_bem_tipoAquisicao]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bem] ADD  CONSTRAINT [DF_bem_tipoAquisicao]  DEFAULT ((1)) FOR [tipoAquisicao]
GO
/****** Object:  Default [DF_bem_quantidade]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bem] ADD  CONSTRAINT [DF_bem_quantidade]  DEFAULT ((1)) FOR [quantidade]
GO
/****** Object:  Default [DF_estadoBem_dataInicio]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[estadoBem] ADD  CONSTRAINT [DF_estadoBem_dataInicio]  DEFAULT (getdate()) FOR [dataInicio]
GO
/****** Object:  Default [DF_transferencia_data]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[transferencia] ADD  CONSTRAINT [DF_transferencia_data]  DEFAULT (getdate()) FOR [data]
GO
/****** Object:  Default [DF_transferencia_concluida]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[transferencia] ADD  CONSTRAINT [DF_transferencia_concluida]  DEFAULT ((0)) FOR [concluida]
GO
/****** Object:  ForeignKey [FK_usuario_pessoa]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_pessoa] FOREIGN KEY([pessoaId])
REFERENCES [dbo].[pessoa] ([pessoaId])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_pessoa]
GO
/****** Object:  ForeignKey [FK_bem_estado]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bem]  WITH CHECK ADD  CONSTRAINT [FK_bem_estado] FOREIGN KEY([estadoId])
REFERENCES [dbo].[estado] ([estadoId])
GO
ALTER TABLE [dbo].[bem] CHECK CONSTRAINT [FK_bem_estado]
GO
/****** Object:  ForeignKey [FK_bem_grupo]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bem]  WITH CHECK ADD  CONSTRAINT [FK_bem_grupo] FOREIGN KEY([grupoId])
REFERENCES [dbo].[grupo] ([grupoId])
GO
ALTER TABLE [dbo].[bem] CHECK CONSTRAINT [FK_bem_grupo]
GO
/****** Object:  ForeignKey [FK_bem_local]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bem]  WITH CHECK ADD  CONSTRAINT [FK_bem_local] FOREIGN KEY([localId])
REFERENCES [dbo].[local] ([localId])
GO
ALTER TABLE [dbo].[bem] CHECK CONSTRAINT [FK_bem_local]
GO
/****** Object:  ForeignKey [FK_grupoBem_bem]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[grupoBem]  WITH CHECK ADD  CONSTRAINT [FK_grupoBem_bem] FOREIGN KEY([bemId])
REFERENCES [dbo].[bem] ([bemId])
GO
ALTER TABLE [dbo].[grupoBem] CHECK CONSTRAINT [FK_grupoBem_bem]
GO
/****** Object:  ForeignKey [FK_grupoBem_grupo]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[grupoBem]  WITH CHECK ADD  CONSTRAINT [FK_grupoBem_grupo] FOREIGN KEY([grupoId])
REFERENCES [dbo].[grupo] ([grupoId])
GO
ALTER TABLE [dbo].[grupoBem] CHECK CONSTRAINT [FK_grupoBem_grupo]
GO
/****** Object:  ForeignKey [FK_estadoBem_bem]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[estadoBem]  WITH CHECK ADD  CONSTRAINT [FK_estadoBem_bem] FOREIGN KEY([bemId])
REFERENCES [dbo].[bem] ([bemId])
GO
ALTER TABLE [dbo].[estadoBem] CHECK CONSTRAINT [FK_estadoBem_bem]
GO
/****** Object:  ForeignKey [FK_estadoBem_estado]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[estadoBem]  WITH CHECK ADD  CONSTRAINT [FK_estadoBem_estado] FOREIGN KEY([estadoId])
REFERENCES [dbo].[estado] ([estadoId])
GO
ALTER TABLE [dbo].[estadoBem] CHECK CONSTRAINT [FK_estadoBem_estado]
GO
/****** Object:  ForeignKey [FK_bemAquisicao_bem]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bemAquisicao]  WITH CHECK ADD  CONSTRAINT [FK_bemAquisicao_bem] FOREIGN KEY([bemId])
REFERENCES [dbo].[bem] ([bemId])
GO
ALTER TABLE [dbo].[bemAquisicao] CHECK CONSTRAINT [FK_bemAquisicao_bem]
GO
/****** Object:  ForeignKey [FK_bemAquisicao_fornecedor]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bemAquisicao]  WITH CHECK ADD  CONSTRAINT [FK_bemAquisicao_fornecedor] FOREIGN KEY([fornecedorId])
REFERENCES [dbo].[fornecedor] ([fornecedorId])
GO
ALTER TABLE [dbo].[bemAquisicao] CHECK CONSTRAINT [FK_bemAquisicao_fornecedor]
GO
/****** Object:  ForeignKey [FK_transferencia_local]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[transferencia]  WITH CHECK ADD  CONSTRAINT [FK_transferencia_local] FOREIGN KEY([origemId])
REFERENCES [dbo].[local] ([localId])
GO
ALTER TABLE [dbo].[transferencia] CHECK CONSTRAINT [FK_transferencia_local]
GO
/****** Object:  ForeignKey [FK_transferencia_local1]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[transferencia]  WITH CHECK ADD  CONSTRAINT [FK_transferencia_local1] FOREIGN KEY([destinoId])
REFERENCES [dbo].[local] ([localId])
GO
ALTER TABLE [dbo].[transferencia] CHECK CONSTRAINT [FK_transferencia_local1]
GO
/****** Object:  ForeignKey [FK_transferencia_usuario]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[transferencia]  WITH CHECK ADD  CONSTRAINT [FK_transferencia_usuario] FOREIGN KEY([usuarioId])
REFERENCES [dbo].[usuario] ([usuarioId])
GO
ALTER TABLE [dbo].[transferencia] CHECK CONSTRAINT [FK_transferencia_usuario]
GO
/****** Object:  ForeignKey [FK_transferenciaBem_bem]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[transferenciaBem]  WITH CHECK ADD  CONSTRAINT [FK_transferenciaBem_bem] FOREIGN KEY([bemId])
REFERENCES [dbo].[bem] ([bemId])
GO
ALTER TABLE [dbo].[transferenciaBem] CHECK CONSTRAINT [FK_transferenciaBem_bem]
GO
/****** Object:  ForeignKey [FK_transferenciaBem_transferencia]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[transferenciaBem]  WITH CHECK ADD  CONSTRAINT [FK_transferenciaBem_transferencia] FOREIGN KEY([transferenciaId])
REFERENCES [dbo].[transferencia] ([transferenciaId])
GO
ALTER TABLE [dbo].[transferenciaBem] CHECK CONSTRAINT [FK_transferenciaBem_transferencia]
GO
/****** Object:  ForeignKey [FK_convenio_ConvenioTipo]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[convenio]  WITH CHECK ADD  CONSTRAINT [FK_convenio_ConvenioTipo] FOREIGN KEY([convenioTipoId])
REFERENCES [dbo].[convenioTipo] ([convenioTipoId])
GO

ALTER TABLE [dbo].[convenio] CHECK CONSTRAINT [FK_convenio_ConvenioTipo]
GO

/****** Object:  ForeignKey [FK_bemAquisicao_convenio]    Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bemAquisicao]  WITH CHECK ADD  CONSTRAINT [FK_bemAquisicao_convenio] FOREIGN KEY([convenioId])
REFERENCES [dbo].[convenio] ([convenioId])
GO

ALTER TABLE [dbo].[bemAquisicao] CHECK CONSTRAINT [FK_bemAquisicao_convenio]
GO
/****** Object:  ForeignKey [FK_bemAquisicao_empenho]   Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bemAquisicao]  WITH CHECK ADD  CONSTRAINT [FK_bemAquisicao_empenho] FOREIGN KEY([empenhoId])
REFERENCES [dbo].[empenho] ([empenhoId])
GO

ALTER TABLE [dbo].[bemAquisicao] CHECK CONSTRAINT [FK_bemAquisicao_empenho]
GO
/****** Object:  ForeignKey [FK_bemAquisicao_modalidade]   Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bemAquisicao]  WITH CHECK ADD  CONSTRAINT [FK_bemAquisicao_modalidade] FOREIGN KEY([modalidadeId])
REFERENCES [dbo].[modalidade] ([modalidadeId])
GO

ALTER TABLE [dbo].[bemAquisicao] CHECK CONSTRAINT [FK_bemAquisicao_modalidade]
GO
/****** Object:  ForeignKey [FK_bemAquisicao_processo]   Script Date: 06/12/2011 13:20:21 ******/
ALTER TABLE [dbo].[bemAquisicao]  WITH CHECK ADD  CONSTRAINT [FK_bemAquisicao_processo] FOREIGN KEY([processoId])
REFERENCES [dbo].[processo] ([processoId])
GO

ALTER TABLE [dbo].[bemAquisicao] CHECK CONSTRAINT [FK_bemAquisicao_processo]
GO

/*Adicionar ações para relacionar com usuários*/
insert into acoes(descricao,nomeAcao) values('Registro de pessoas','actPessoa');
insert into acoes(descricao,nomeAcao) values('Locais','actLocais');
insert into acoes(descricao,nomeAcao) values('Grupos','actGrupos');
insert into acoes(descricao,nomeAcao) values('Registro de bens','actRegistroBens');
insert into acoes(descricao,nomeAcao) values('Informações sobre o projeto','actSobre');
insert into acoes(descricao,nomeAcao) values('Empresa','actInfoEmpresa');
insert into acoes(descricao,nomeAcao) values('Movimentação','actMovimentacao');
insert into acoes(descricao,nomeAcao) values('Relação de Unidades','actRelatUnidade');
insert into acoes(descricao,nomeAcao) values('Relatório de Bens Por Grupo','actRelatGrupo');
insert into acoes(descricao,nomeAcao) values('TR - Termo de Responsabilidade','actRelatTr');
insert into acoes(descricao,nomeAcao) values('Importar dados','actImportarDados');
insert into acoes(descricao,nomeAcao) values('Relatório de totais por grupo','actRelatTotGrupo');
insert into acoes(descricao,nomeAcao) values('Cadastro de Fornecedores','actFornecedor');
insert into acoes(descricao,nomeAcao) values('Gestões','actGestao');
insert into acoes(descricao,nomeAcao) values('Relatório de Bens Patrimoniais','actBenPatrimonial');
insert into acoes(descricao,nomeAcao) values('Depreciação de Bens','actDepreciacao');
insert into acoes(descricao,nomeAcao) values('Convênios','actConvenio');
insert into acoes(descricao,nomeAcao) values('Empenhos','actEmpenho');
insert into acoes(descricao,nomeAcao) values('Processos','actProcesso');
insert into acoes(descricao,nomeAcao) values('Depreciação de Bens','actDepreciacao');
GO
/*Grava as informações da primeira empresa*/
insert empresa(chave, logotipo, nomeFantasia, pessoaId, razaoSocial)
values(newid(), null, 'Nome Fantasia da Empresa', null, 'Razao Social da Empresa')

/*Cria usuário administrador*/
insert into pessoa(nome, tipo, usuario)
values('Administrador',1, 1)

/*Adicionar acesso total ao sistema*/
insert into usuario(desativado, [login], pessoaId, senha)
values (0, 'Admin', SCOPE_IDENTITY(), 'c4ca4238a0b923820dcc509a6f75849b');

/**Adicionar ações para usuário**/
insert into usuarioAcao(acaoId,usuarioId)
select acaoId, SCOPE_IDENTITY()
from acoes

/*Estados*/
insert estado(descricao) values ('Novo');
insert estado(descricao) values ('Bom');
insert estado(descricao) values ('Regular');
insert estado(descricao) values ('Inservível');

/* Modalidades */
insert modalidade(descricao) values ('Pregão Eletrônico');
insert modalidade(descricao) values ('Pregão Presencial');
insert modalidade(descricao) values ('Tomada de Preços');
insert modalidade(descricao) values ('Concorrência');
insert modalidade(descricao) values ('Convite');
insert modalidade(descricao) values ('Concurso');
insert modalidade(descricao) values ('Leilão');
insert modalidade(descricao) values ('Dispensa de Licitação');
insert modalidade(descricao) values ('Doação');

/* Tipos de convenio */
insert convenioTipo(descricao) values ('Federal');
insert convenioTipo(descricao) values ('Estadual');
insert convenioTipo(descricao) values ('Municipal');

GO
alter table bem add valorAquisicao money not null default(0);
GO
update bem
set valorAquisicao = valor