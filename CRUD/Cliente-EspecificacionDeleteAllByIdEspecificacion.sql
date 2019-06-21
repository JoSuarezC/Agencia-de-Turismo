use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-EspecificacionDeleteAllByIdEspecificacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-EspecificacionDeleteAllByIdEspecificacion]
go

create procedure [dbo].[Cliente-EspecificacionDeleteAllByIdEspecificacion]
(
	@IdEspecificacion nvarchar(10)
)

as

set nocount on

delete from [Cliente-Especificacion]
where [IdEspecificacion] = @IdEspecificacion
go
