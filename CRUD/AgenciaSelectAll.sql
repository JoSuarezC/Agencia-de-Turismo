use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AgenciaSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[AgenciaSelectAll]
go

create procedure [dbo].[AgenciaSelectAll]

as

set nocount on

select [IdAgencia],
	[Nombre],
	[Descripcion]
from [Agencia]
go
