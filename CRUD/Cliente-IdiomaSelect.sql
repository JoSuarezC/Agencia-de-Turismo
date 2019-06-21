use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-IdiomaSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-IdiomaSelect]
go

create procedure [dbo].[Cliente-IdiomaSelect]
(
	@IdCI nvarchar(10)
)

as

set nocount on

select [IdCI],
	[IdCliente],
	[IdIdioma],
	[Nativo]
from [Cliente-Idioma]
where [IdCI] = @IdCI
go
