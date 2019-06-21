use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HotelUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[HotelUpdate]
go

create procedure [dbo].[HotelUpdate]
(
	@IdHotel nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50),
	@IdCalificacion nvarchar(10)
)

as

set nocount on

update [Hotel]
set [IdUbicacion] = @IdUbicacion,
	[Nombre] = @Nombre,
	[IdCalificacion] = @IdCalificacion
where [IdHotel] = @IdHotel
go
