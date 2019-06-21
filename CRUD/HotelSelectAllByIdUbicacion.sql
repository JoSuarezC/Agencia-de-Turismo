use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HotelSelectAllByIdUbicacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[HotelSelectAllByIdUbicacion]
go

create procedure [dbo].[HotelSelectAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

select [IdHotel],
	[IdUbicacion],
	[Nombre],
	[IdCalificacion]
from [Hotel]
where [IdUbicacion] = @IdUbicacion
go
