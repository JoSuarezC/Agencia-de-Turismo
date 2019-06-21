use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TerminalSelectAllByIdUbicacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[TerminalSelectAllByIdUbicacion]
go

create procedure [dbo].[TerminalSelectAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

select [IdTerminal],
	[IdUbicacion],
	[Nombre],
	[Detalle]
from [Terminal]
where [IdUbicacion] = @IdUbicacion
go
