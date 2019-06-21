use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UbicacionDeleteAllByIdPais]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[UbicacionDeleteAllByIdPais]
go

create procedure [dbo].[UbicacionDeleteAllByIdPais]
(
	@IdPais nvarchar(10)
)

as

set nocount on

delete from [Ubicacion]
where [IdPais] = @IdPais
go
