use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EspecificacionSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EspecificacionSelect]
go

create procedure [dbo].[EspecificacionSelect]
(
	@IdEspecificacion nvarchar(10)
)

as

set nocount on

select [IdEspecificacion],
	[Titulo],
	[Detalle]
from [Especificacion]
where [IdEspecificacion] = @IdEspecificacion
go
