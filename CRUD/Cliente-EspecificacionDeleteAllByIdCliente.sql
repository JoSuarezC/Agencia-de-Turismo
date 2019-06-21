use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-EspecificacionDeleteAllByIdCliente]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-EspecificacionDeleteAllByIdCliente]
go

create procedure [dbo].[Cliente-EspecificacionDeleteAllByIdCliente]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

delete from [Cliente-Especificacion]
where [IdCliente] = @IdCliente
go
