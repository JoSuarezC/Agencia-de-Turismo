use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[IdiomaDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[IdiomaDelete]
go

create procedure [dbo].[IdiomaDelete]
(
	@IdIdioma nvarchar(10)
)

as

set nocount on

delete from [Idioma]
where [IdIdioma] = @IdIdioma
go
