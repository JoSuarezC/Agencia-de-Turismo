use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-GuiaUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-GuiaUpdate]
go

create procedure [dbo].[PDT-GuiaUpdate]
(
	@IdPG nvarchar(10),
	@IdPDT nvarchar(10),
	@IdGuia nvarchar(10),
	@Estado bit
)

as

set nocount on

update [PDT-Guia]
set [IdPDT] = @IdPDT,
	[IdGuia] = @IdGuia,
	[Estado] = @Estado
where [IdPG] = @IdPG
go
