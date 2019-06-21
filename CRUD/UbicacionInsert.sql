use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UbicacionInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UbicacionInsert]
go

create procedure [dbo].[UbicacionInsert]
(
	@IdUbicacion nvarchar(10),
	@IdPais nvarchar(10),
	@IdCiudad nvarchar(10),
	@Detalle nvarchar(200)
)

as

set nocount on
if not exists(select * from Ubicacion e where e.IdUbicacion = @IdUbicacion)
begin
if exists(select * from Pais p where p.IdPais = @IdPais)
begin
if exists(select * from Ciudad p where p.IdCiudad = @IdCiudad)
begin



insert into [Ubicacion]
(
	[IdUbicacion],
	[IdPais],
	[IdCiudad],
	[Detalle]
)
values
(
	@IdUbicacion,
	@IdPais,
	@IdCiudad,
	@Detalle
)
end
else
	begin
	Raiserror('El id de ciudad no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de pais no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
go
