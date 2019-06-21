use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-EspecificacionDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-EspecificacionDelete]
go

create procedure [dbo].[Cliente-EspecificacionDelete]
(
	@IdCE nvarchar(10)
)

as

set nocount on

delete from [Cliente-Especificacion]
where [IdCE] = @IdCE
go
