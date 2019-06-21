use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-IdiomaSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-IdiomaSelect]
go

create procedure [dbo].[Paquete-IdiomaSelect]
(
	@IdPaqueteIdioma nvarchar(10)
)

as

set nocount on

select [IdPaqueteIdioma],
	[IdPaquete],
	[IdIdioma]
from [Paquete-Idioma]
where [IdPaqueteIdioma] = @IdPaqueteIdioma
go
