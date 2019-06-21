use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReservacionUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReservacionUpdate]
go

create procedure [dbo].[ReservacionUpdate]
(
	@IdReservacion int,
	@IdCliente nvarchar(10),
	@IdPaquete nvarchar(10),
	@CantidadPersonas int,
	@CantidadPaquetes int
)

as

set nocount on

update [Reservacion]
set [IdCliente] = @IdCliente,
	[IdPaquete] = @IdPaquete,
	[CantidadPersonas] = @CantidadPersonas,
	[CantidadPaquetes] = @CantidadPaquetes
where [IdReservacion] = @IdReservacion
go
