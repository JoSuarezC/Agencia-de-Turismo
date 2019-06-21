use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Guia-IdiomaDeleteAllByIdGuia]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Guia-IdiomaDeleteAllByIdGuia]
go

create procedure [dbo].[Guia-IdiomaDeleteAllByIdGuia]
(
	@IdGuia nvarchar(10)
)

as

set nocount on

delete from [Guia-Idioma]
where [IdGuia] = @IdGuia
go
