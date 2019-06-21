use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReservacionSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReservacionSelectAll]
go

create procedure [dbo].[ReservacionSelectAll]

as

set nocount on

select [IdReservacion],
	[IdCliente],
	[IdPaquete],
	[CantidadPersonas],
	[CantidadPaquetes]
from [Reservacion]
go
