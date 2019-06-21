use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-EspecificacionSelectAllByIdCliente]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-EspecificacionSelectAllByIdCliente]
go

create procedure [dbo].[Cliente-EspecificacionSelectAllByIdCliente]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

select [IdCE],
	[IdCliente],
	[IdEspecificacion]
from [Cliente-Especificacion]
where [IdCliente] = @IdCliente
go
