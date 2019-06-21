use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-IdiomaDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-IdiomaDelete]
go

create procedure [dbo].[Paquete-IdiomaDelete]
(
	@IdPaqueteIdioma nvarchar(10)
)

as

set nocount on

delete from [Paquete-Idioma]
where [IdPaqueteIdioma] = @IdPaqueteIdioma
go
