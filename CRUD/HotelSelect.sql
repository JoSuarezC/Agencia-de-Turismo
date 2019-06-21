use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HotelSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[HotelSelect]
go

create procedure [dbo].[HotelSelect]
(
	@IdHotel nvarchar(10)
)

as

set nocount on

select [IdHotel],
	[IdUbicacion],
	[Nombre],
	[IdCalificacion]
from [Hotel]
where [IdHotel] = @IdHotel
go
