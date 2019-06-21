use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-IdiomaDeleteAllByIdIdioma]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-IdiomaDeleteAllByIdIdioma]
go

create procedure [dbo].[Cliente-IdiomaDeleteAllByIdIdioma]
(
	@IdIdioma nvarchar(10)
)

as

set nocount on

delete from [Cliente-Idioma]
where [IdIdioma] = @IdIdioma
go
