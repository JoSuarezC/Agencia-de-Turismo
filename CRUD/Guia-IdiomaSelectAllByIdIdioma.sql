use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Guia-IdiomaSelectAllByIdIdioma]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Guia-IdiomaSelectAllByIdIdioma]
go

create procedure [dbo].[Guia-IdiomaSelectAllByIdIdioma]
(
	@IdIdioma nvarchar(10)
)

as

set nocount on

select [IdGI],
	[IdGuia],
	[IdIdioma]
from [Guia-Idioma]
where [IdIdioma] = @IdIdioma
go
