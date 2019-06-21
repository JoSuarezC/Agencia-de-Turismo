use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReservacionDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReservacionDelete]
go

create procedure [dbo].[ReservacionDelete]
(
	@IdReservacion int
)

as

set nocount on

delete from [Reservacion]
where [IdReservacion] = @IdReservacion
go
