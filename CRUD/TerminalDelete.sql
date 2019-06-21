use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TerminalDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[TerminalDelete]
go

create procedure [dbo].[TerminalDelete]
(
	@IdTerminal nvarchar(10)
)

as

set nocount on

delete from [Terminal]
where [IdTerminal] = @IdTerminal
go
