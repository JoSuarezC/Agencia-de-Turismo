use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TerminalUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[TerminalUpdate]
go

create procedure [dbo].[TerminalUpdate]
(
	@IdTerminal nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50),
	@Detalle nvarchar(200)
)

as

set nocount on

update [Terminal]
set [IdUbicacion] = @IdUbicacion,
	[Nombre] = @Nombre,
	[Detalle] = @Detalle
where [IdTerminal] = @IdTerminal
go
