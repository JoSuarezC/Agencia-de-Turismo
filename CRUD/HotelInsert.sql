use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HotelInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[HotelInsert]
go

create procedure [dbo].[HotelInsert]
(
	@IdHotel nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50),
	@IdCalificacion nvarchar(10)
)

as

set nocount on

if not exists(select * from Hotel e where e.IdHotel = @IdHotel)
begin
if exists(select * from Ubicacion p where p.IdUbicacion = @IdUbicacion)
begin
if exists(select * from CalificacionHotel p where p.IdCalificacion = @IdCalificacion)
begin



insert into [Hotel]
(
	[IdHotel],
	[IdUbicacion],
	[Nombre],
	[IdCalificacion]
)
values
(
	@IdHotel,
	@IdUbicacion,
	@Nombre,
	@IdCalificacion
)
end
else
	begin
	Raiserror('El id de calificacion no existe',0,0)
	end
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
