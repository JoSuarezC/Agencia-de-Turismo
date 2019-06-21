use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FacturaSelectAllByIdModoPago]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FacturaSelectAllByIdModoPago]
go

create procedure [dbo].[FacturaSelectAllByIdModoPago]
(
	@IdModoPago nvarchar(10)
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
where [IdModoPago] = @IdModoPago
go
