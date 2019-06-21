use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EspecificacionDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EspecificacionDelete]
go

create procedure [dbo].[EspecificacionDelete]
(
	@IdEspecificacion nvarchar(10)
)

as

set nocount on

delete from [Especificacion]
where [IdEspecificacion] = @IdEspecificacion
go
