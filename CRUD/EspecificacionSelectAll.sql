use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EspecificacionSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EspecificacionSelectAll]
go

create procedure [dbo].[EspecificacionSelectAll]

as

set nocount on

select [IdEspecificacion],
	[Titulo],
	[Detalle]
from [Especificacion]
go
