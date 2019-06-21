use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AgenciaDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[AgenciaDelete]
go

create procedure [dbo].[AgenciaDelete]
(
	@IdAgencia int
)

as

set nocount on

delete from [Agencia]
where [IdAgencia] = @IdAgencia
go
