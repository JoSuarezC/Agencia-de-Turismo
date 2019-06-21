use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-GuiaSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-GuiaSelect]
go

create procedure [dbo].[PDT-GuiaSelect]
(
	@IdPG nvarchar(10)
)

as

set nocount on

select [IdPG],
	[IdPDT],
	[IdGuia],
	[Estado]
from [PDT-Guia]
where [IdPG] = @IdPG
go
