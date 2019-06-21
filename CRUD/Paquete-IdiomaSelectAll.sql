use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-IdiomaSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-IdiomaSelectAll]
go

create procedure [dbo].[Paquete-IdiomaSelectAll]

as

set nocount on

select [IdPaqueteIdioma],
	[IdPaquete],
	[IdIdioma]
from [Paquete-Idioma]
go
