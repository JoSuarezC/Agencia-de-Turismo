use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CalificacionHotelSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[CalificacionHotelSelect]
go

create procedure [dbo].[CalificacionHotelSelect]
(
	@IdCalificacion nvarchar(10)
)

as

set nocount on

select [IdCalificacion],
	[Calificacion]
from [CalificacionHotel]
where [IdCalificacion] = @IdCalificacion
go
