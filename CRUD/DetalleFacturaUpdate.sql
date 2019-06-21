use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DetalleFacturaUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DetalleFacturaUpdate]
go

create procedure [dbo].[DetalleFacturaUpdate]
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

update [DetalleFactura]
set [IdFactura] = @IdFactura,
	[IdReservacion] = @IdReservacion,
	[Precio] = @Precio,
	[Cantidad] = @Cantidad,
	[CantidadPersonas] = @CantidadPersonas
where [IdLinea] = @IdLinea
go
