use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DetalleFacturaInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DetalleFacturaInsert]
go

create procedure [dbo].[DetalleFacturaInsert]
(
	@IdLinea nvarchar(10),
	@IdFactura nvarchar(10),
	@IdReservacion int,
	@Precio money,
	@Cantidad int,
	@CantidadPersonas int
)

as

set nocount on

insert into [DetalleFactura]
(
	[IdLinea],
	[IdFactura],
	[IdReservacion],
	[Precio],
	[Cantidad],
	[CantidadPersonas]
)
values
(
	@IdLinea,
	@IdFactura,
	@IdReservacion,
	@Precio,
	@Cantidad,
	@CantidadPersonas
)
go
