use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FacturaSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FacturaSelect]
go

create procedure [dbo].[FacturaSelect]
(
	@IdFactura nvarchar(10)
)

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
where [IdFactura] = @IdFactura
go
