use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Guia-IdiomaSelectAllByIdGuia]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Guia-IdiomaSelectAllByIdGuia]
go

create procedure [dbo].[Guia-IdiomaSelectAllByIdGuia]
(
	@IdGuia nvarchar(10)
)

as

set nocount on

select [IdGI],
	[IdGuia],
	[IdIdioma]
from [Guia-Idioma]
where [IdGuia] = @IdGuia
go
