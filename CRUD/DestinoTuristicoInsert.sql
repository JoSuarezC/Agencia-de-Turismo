use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DestinoTuristicoInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DestinoTuristicoInsert]
go

create procedure [dbo].[DestinoTuristicoInsert]
(
	@IdLocalidad nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50)
)

as

set nocount on
if not exists(select * from DestinoTuristico e where e.IdLocalidad = @IdLocalidad)
begin
if exists(select * from Ubicacion p where p.IdCiudad = @IdUbicacion)
begin



insert into [DestinoTuristico]
(
	[IdLocalidad],
	[IdUbicacion],
	[Nombre]
)
values
(
	@IdLocalidad,
	@IdUbicacion,
	@Nombre
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
