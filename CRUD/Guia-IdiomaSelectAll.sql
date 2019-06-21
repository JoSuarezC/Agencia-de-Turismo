use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Guia-IdiomaSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Guia-IdiomaSelectAll]
go

create procedure [dbo].[Guia-IdiomaSelectAll]

as

set nocount on

select [IdGI],
	[IdGuia],
	[IdIdioma]
from [Guia-Idioma]
go
