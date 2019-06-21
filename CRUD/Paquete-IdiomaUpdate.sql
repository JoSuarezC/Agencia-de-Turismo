use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-IdiomaUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-IdiomaUpdate]
go

create procedure [dbo].[Paquete-IdiomaUpdate]
(
	@IdPaqueteIdioma nvarchar(10),
	@IdPaquete nvarchar(10),
	@IdIdioma nvarchar(10)
)

as

set nocount on

update [Paquete-Idioma]
set [IdPaquete] = @IdPaquete,
	[IdIdioma] = @IdIdioma
where [IdPaqueteIdioma] = @IdPaqueteIdioma
go
