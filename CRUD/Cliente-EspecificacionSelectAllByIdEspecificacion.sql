use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-EspecificacionSelectAllByIdEspecificacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-EspecificacionSelectAllByIdEspecificacion]
go

create procedure [dbo].[Cliente-EspecificacionSelectAllByIdEspecificacion]
(
	@IdEspecificacion nvarchar(10)
)

as

set nocount on

select [IdCE],
	[IdCliente],
	[IdEspecificacion]
from [Cliente-Especificacion]
where [IdEspecificacion] = @IdEspecificacion
go
