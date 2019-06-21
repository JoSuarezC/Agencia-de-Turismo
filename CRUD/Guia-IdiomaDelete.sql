use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Guia-IdiomaDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Guia-IdiomaDelete]
go

create procedure [dbo].[Guia-IdiomaDelete]
(
	@IdGI nvarchar(10)
)

as

set nocount on

delete from [Guia-Idioma]
where [IdGI] = @IdGI
go
