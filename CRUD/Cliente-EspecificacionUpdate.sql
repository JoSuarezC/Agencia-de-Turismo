use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-EspecificacionUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-EspecificacionUpdate]
go

create procedure [dbo].[Cliente-EspecificacionUpdate]
(
	@IdCE nvarchar(10),
	@IdCliente nvarchar(10),
	@IdEspecificacion nvarchar(10)
)

as

set nocount on

update [Cliente-Especificacion]
set [IdCliente] = @IdCliente,
	[IdEspecificacion] = @IdEspecificacion
where [IdCE] = @IdCE
go
