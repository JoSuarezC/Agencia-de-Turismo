use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-GuiaSelectAllByIdGuia]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-GuiaSelectAllByIdGuia]
go

create procedure [dbo].[PDT-GuiaSelectAllByIdGuia]
(
	@IdGuia nvarchar(10)
)

as

set nocount on

select [IdPG],
	[IdPDT],
	[IdGuia],
	[Estado]
from [PDT-Guia]
where [IdGuia] = @IdGuia
go
