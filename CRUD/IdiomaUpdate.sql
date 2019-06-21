use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[IdiomaUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[IdiomaUpdate]
go

create procedure [dbo].[IdiomaUpdate]
(
	@IdIdioma nvarchar(10),
	@Nombre nvarchar(50)
)

as

set nocount on

update [Idioma]
set [Nombre] = @Nombre
where [IdIdioma] = @IdIdioma
go
