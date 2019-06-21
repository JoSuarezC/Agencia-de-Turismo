use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaisSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PaisSelectAll]
go

create procedure [dbo].[PaisSelectAll]

as

set nocount on

select [IdPais],
	[Nombre],
	[Descripcion]
from [Pais]
go
