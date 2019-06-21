use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReservacionSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReservacionSelect]
go

create procedure [dbo].[ReservacionSelect]
(
	@IdReservacion int
)

as

set nocount on

select [IdReservacion],
	[IdCliente],
	[IdPaquete],
	[CantidadPersonas],
	[CantidadPaquetes]
from [Reservacion]
where [IdReservacion] = @IdReservacion
go
