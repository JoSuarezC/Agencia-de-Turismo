use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CalificacionHotelUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[CalificacionHotelUpdate]
go

create procedure [dbo].[CalificacionHotelUpdate]
(
	@IdCalificacion nvarchar(10),
	@Calificacion int
)

as

set nocount on

update [CalificacionHotel]
set [Calificacion] = @Calificacion
where [IdCalificacion] = @IdCalificacion
go
