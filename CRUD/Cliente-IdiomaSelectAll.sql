use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-IdiomaSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-IdiomaSelectAll]
go

create procedure [dbo].[Cliente-IdiomaSelectAll]

as

set nocount on

select [IdCI],
	[IdCliente],
	[IdIdioma],
	[Nativo]
from [Cliente-Idioma]
go
