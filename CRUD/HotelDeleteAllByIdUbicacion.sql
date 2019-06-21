use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HotelDeleteAllByIdUbicacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[HotelDeleteAllByIdUbicacion]
go

create procedure [dbo].[HotelDeleteAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [Hotel]
where [IdUbicacion] = @IdUbicacion
go
