use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FacturaSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FacturaSelectAll]
go

create procedure [dbo].[FacturaSelectAll]

as

set nocount on

select [IdFactura],
	[IdVendedor],
	[IdCliente],
	[IdModoPago],
	[Fecha],
	[MontoTotal],
	[MontoPagado],
	[EstadoPago]
from [Factura]
go
