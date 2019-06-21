use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TerminalSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[TerminalSelectAll]
go

create procedure [dbo].[TerminalSelectAll]

as

set nocount on

select [IdTerminal],
	[IdUbicacion],
	[Nombre],
	[Detalle]
from [Terminal]
go
