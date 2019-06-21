use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FacturaUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FacturaUpdate]
go

create procedure [dbo].[FacturaUpdate]
(
	@IdFactura nvarchar(10),
	@IdVendedor nvarchar(10),
	@IdCliente nvarchar(10),
	@IdModoPago nvarchar(10),
	@Fecha nvarchar(10),
	@MontoTotal money,
	@MontoPagado money,
	@EstadoPago bit
)

as

set nocount on

update [Factura]
set [IdVendedor] = @IdVendedor,
	[IdCliente] = @IdCliente,
	[IdModoPago] = @IdModoPago,
	[Fecha] = @Fecha,
	[MontoTotal] = @MontoTotal,
	[MontoPagado] = @MontoPagado,
	[EstadoPago] = @EstadoPago
where [IdFactura] = @IdFactura
go
