use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HotelSelectAllByIdCalificacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[HotelSelectAllByIdCalificacion]
go

create procedure [dbo].[HotelSelectAllByIdCalificacion]
(
	@IdCalificacion nvarchar(10)
)

as

set nocount on

select [IdHotel],
	[IdUbicacion],
	[Nombre],
	[IdCalificacion]
from [Hotel]
where [IdCalificacion] = @IdCalificacion
go
