use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FacturaSelectAllByIdCliente]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FacturaSelectAllByIdCliente]
go

create procedure [dbo].[FacturaSelectAllByIdCliente]
(
	@IdCliente nvarchar(10)
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
where [IdCliente] = @IdCliente
go
