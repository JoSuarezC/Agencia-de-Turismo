use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-IdiomaUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-IdiomaUpdate]
go

create procedure [dbo].[Cliente-IdiomaUpdate]
(
	@IdCI nvarchar(10),
	@IdCliente nvarchar(10),
	@IdIdioma nvarchar(10),
	@Nativo bit
)

as

set nocount on

update [Cliente-Idioma]
set [IdCliente] = @IdCliente,
	[IdIdioma] = @IdIdioma,
	[Nativo] = @Nativo
where [IdCI] = @IdCI
go
