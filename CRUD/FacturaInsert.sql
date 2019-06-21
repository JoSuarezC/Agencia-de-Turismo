use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FacturaInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FacturaInsert]
go

create procedure [dbo].[FacturaInsert]
(
	@IdFactura nvarchar(10),
	@IdVendedor nvarchar(10),
	@IdCliente nvarchar(10),
	@IdModoPago nvarchar(10),
	@Fecha date,
	@MontoTotal money,
	@MontoPagado money,
	@EstadoPago bit
)

as

set nocount on

if not exists(select * from Factura f where f.IdFactura = @IdFactura)
begin
if exists(select * from Empleado e where e.IdEmpleado = @IdVendedor)
begin
if exists(select * from Cliente e where e.IdCliente = @IdCliente)
begin
if exists(select * from ModoPago e where e.IdModoPago = @IdModoPago)
begin

insert into [Factura]
(
	[IdFactura],
	[IdVendedor],
	[IdCliente],
	[IdModoPago],
	[Fecha],
	[MontoTotal],
	[MontoPagado],
	[EstadoPago]
)
values
(
	@IdFactura,
	@IdVendedor,
	@IdCliente,
	@IdModoPago,
	@Fecha,
	@MontoTotal,
	@MontoPagado,
	@EstadoPago
)
end
else
	begin
	Raiserror('El id de modo de pago no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de cliente no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de empleado no existe',0,0)
	end
end

else
	begin
	Raiserror('El id ya existe',0,0)
	end
go
