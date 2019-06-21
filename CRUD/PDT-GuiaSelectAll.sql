use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-GuiaSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-GuiaSelectAll]
go

create procedure [dbo].[PDT-GuiaSelectAll]

as

set nocount on

select [IdPG],
	[IdPDT],
	[IdGuia],
	[Estado]
from [PDT-Guia]
go
