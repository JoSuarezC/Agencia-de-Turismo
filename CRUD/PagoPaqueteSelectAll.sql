use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PagoPaqueteSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PagoPaqueteSelectAll]
go

create procedure [dbo].[PagoPaqueteSelectAll]

as

set nocount on

select [IdPagoPaquete],
	[IdPaquete],
	[IdPromocion],
	[PrecioRegular],
	[CantidadPersonas]
from [PagoPaquete]
go
