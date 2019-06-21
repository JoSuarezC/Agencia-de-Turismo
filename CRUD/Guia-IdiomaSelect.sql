use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Guia-IdiomaSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Guia-IdiomaSelect]
go

create procedure [dbo].[Guia-IdiomaSelect]
(
	@IdGI nvarchar(10)
)

as

set nocount on

select [IdGI],
	[IdGuia],
	[IdIdioma]
from [Guia-Idioma]
where [IdGI] = @IdGI
go
