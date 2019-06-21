use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-IdiomaInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-IdiomaInsert]
go

create procedure [dbo].[Paquete-IdiomaInsert]
(
	@IdPaqueteIdioma nvarchar(10),
	@IdPaquete nvarchar(10),
	@IdIdioma nvarchar(10)
)

as

set nocount on

insert into [Paquete-Idioma]
(
	[IdPaqueteIdioma],
	[IdPaquete],
	[IdIdioma]
)
values
(
	@IdPaqueteIdioma,
	@IdPaquete,
	@IdIdioma
)
go
