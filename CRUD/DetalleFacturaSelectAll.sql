use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DetalleFacturaSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DetalleFacturaSelectAll]
go

create procedure [dbo].[DetalleFacturaSelectAll]

as

set nocount on

select [IdLinea],
	[IdFactura],
	[IdReservacion],
	[Precio],
	[Cantidad],
	[CantidadPersonas]
from [DetalleFactura]
go
