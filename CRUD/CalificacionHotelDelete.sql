use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CalificacionHotelDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[CalificacionHotelDelete]
go

create procedure [dbo].[CalificacionHotelDelete]
(
	@IdCalificacion nvarchar(10)
)

as

set nocount on

delete from [CalificacionHotel]
where [IdCalificacion] = @IdCalificacion
go
