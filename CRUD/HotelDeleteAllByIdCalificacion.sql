use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HotelDeleteAllByIdCalificacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[HotelDeleteAllByIdCalificacion]
go

create procedure [dbo].[HotelDeleteAllByIdCalificacion]
(
	@IdCalificacion nvarchar(10)
)

as

set nocount on

delete from [Hotel]
where [IdCalificacion] = @IdCalificacion
go
