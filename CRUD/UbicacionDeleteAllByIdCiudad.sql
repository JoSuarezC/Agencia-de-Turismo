use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UbicacionDeleteAllByIdCiudad]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UbicacionDeleteAllByIdCiudad]
go

create procedure [dbo].[UbicacionDeleteAllByIdCiudad]
(
	@IdCiudad nvarchar(10)
)

as

set nocount on

delete from [Ubicacion]
where [IdCiudad] = @IdCiudad
go
