use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Guia-IdiomaDeleteAllByIdIdioma]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Guia-IdiomaDeleteAllByIdIdioma]
go

create procedure [dbo].[Guia-IdiomaDeleteAllByIdIdioma]
(
	@IdIdioma nvarchar(10)
)

as

set nocount on

delete from [Guia-Idioma]
where [IdIdioma] = @IdIdioma
go
