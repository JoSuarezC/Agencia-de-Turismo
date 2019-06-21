use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Guia-IdiomaInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Guia-IdiomaInsert]
go

create procedure [dbo].[Guia-IdiomaInsert]
(
	@IdGI nvarchar(10),
	@IdGuia nvarchar(10),
	@IdIdioma nvarchar(10)
)

as

set nocount on

insert into [Guia-Idioma]
(
	[IdGI],
	[IdGuia],
	[IdIdioma]
)
values
(
	@IdGI,
	@IdGuia,
	@IdIdioma
)
go
