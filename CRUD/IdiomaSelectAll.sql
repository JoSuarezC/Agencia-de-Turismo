use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[IdiomaSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[IdiomaSelectAll]
go

create procedure [dbo].[IdiomaSelectAll]

as

set nocount on

select [IdIdioma],
	[Nombre]
from [Idioma]
go
