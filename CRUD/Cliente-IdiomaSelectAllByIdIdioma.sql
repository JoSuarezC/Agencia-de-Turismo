use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-IdiomaSelectAllByIdIdioma]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-IdiomaSelectAllByIdIdioma]
go

create procedure [dbo].[Cliente-IdiomaSelectAllByIdIdioma]
(
	@IdIdioma nvarchar(10)
)

as

set nocount on

select [IdCI],
	[IdCliente],
	[IdIdioma],
	[Nativo]
from [Cliente-Idioma]
where [IdIdioma] = @IdIdioma
go
