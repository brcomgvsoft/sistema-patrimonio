USE [patrimonio]
GO
/****** Object:  StoredProcedure [dbo].[sp_finalizaTransferencia]    Script Date: 06/07/2011 15:59:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Fagner Rodrigues Damacena
-- Create date: 2011-04-28
-- Description:	Executa o processo de finalização da transferência.
-- =============================================
ALTER PROCEDURE [dbo].[sp_finalizaTransferencia](@transferenciaId int)
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
