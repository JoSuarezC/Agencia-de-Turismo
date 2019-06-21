use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[IdiomaSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[IdiomaSelect]
go

create procedure [dbo].[IdiomaSelect]
(
	@IdIdioma nvarchar(10)
)

as

set nocount on

select [IdIdioma],
	[Nombre]
from [Idioma]
where [IdIdioma] = @IdIdioma
go
