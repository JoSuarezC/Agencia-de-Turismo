use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TerminalDeleteAllByIdUbicacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[TerminalDeleteAllByIdUbicacion]
go

create procedure [dbo].[TerminalDeleteAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [Terminal]
where [IdUbicacion] = @IdUbicacion
go
