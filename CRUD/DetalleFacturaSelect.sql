use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DetalleFacturaSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DetalleFacturaSelect]
go

create procedure [dbo].[DetalleFacturaSelect]
(
	@IdLinea nvarchar(10)
)

as

set nocount on

select [IdLinea],
	[IdFactura],
	[IdReservacion],
	[Precio],
	[Cantidad],
	[CantidadPersonas]
from [DetalleFactura]
where [IdLinea] = @IdLinea
go
