use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CalificacionHotelInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[CalificacionHotelInsert]
go

create procedure [dbo].[CalificacionHotelInsert]
(
	@IdCalificacion nvarchar(10),
	@Calificacion int
)

as

set nocount on

insert into [CalificacionHotel]
(
	[IdCalificacion],
	[Calificacion]
)
values
(
	@IdCalificacion,
	@Calificacion
)
go
