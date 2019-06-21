use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UbicacionDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UbicacionDelete]
go

create procedure [dbo].[UbicacionDelete]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [Ubicacion]
where [IdUbicacion] = @IdUbicacion
go
