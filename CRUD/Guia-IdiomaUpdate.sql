use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Guia-IdiomaUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Guia-IdiomaUpdate]
go

create procedure [dbo].[Guia-IdiomaUpdate]
(
	@IdGI nvarchar(10),
	@IdGuia nvarchar(10),
	@IdIdioma nvarchar(10)
)

as

set nocount on

update [Guia-Idioma]
set [IdGuia] = @IdGuia,
	[IdIdioma] = @IdIdioma
where [IdGI] = @IdGI
go
