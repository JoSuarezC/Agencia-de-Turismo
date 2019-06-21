use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TerminalSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[TerminalSelect]
go

create procedure [dbo].[TerminalSelect]
(
	@IdTerminal nvarchar(10)
)

as

set nocount on

select [IdTerminal],
	[IdUbicacion],
	[Nombre],
	[Detalle]
from [Terminal]
where [IdTerminal] = @IdTerminal
go
