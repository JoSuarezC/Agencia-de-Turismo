use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TerminalInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[TerminalInsert]
go

create procedure [dbo].[TerminalInsert]
(
	@IdTerminal nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50),
	@Detalle nvarchar(200)
)

as

set nocount on

if not exists(select * from Terminal e where e.IdTerminal = @IdTerminal)
begin
if exists(select * from Ubicacion p where p.IdUbicacion = @IdUbicacion)
begin



insert into [Terminal]
(
	[IdTerminal],
	[IdUbicacion],
	[Nombre],
	[Detalle]
)
values
(
	@IdTerminal,
	@IdUbicacion,
	@Nombre,
	@Detalle
)
end
else
	begin
	Raiserror('El id de ubicacion no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
go
