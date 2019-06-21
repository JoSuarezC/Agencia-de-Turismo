use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FacturaSelectAllByIdVendedor]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FacturaSelectAllByIdVendedor]
go

create procedure [dbo].[FacturaSelectAllByIdVendedor]
(
	@IdVendedor nvarchar(10)
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
where [IdVendedor] = @IdVendedor
go
