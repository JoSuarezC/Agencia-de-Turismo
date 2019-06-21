use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Reservacion-HabitacionInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Reservacion-HabitacionInsert]
go

create procedure [dbo].[Reservacion-HabitacionInsert]
(
	@IdRH int,
	@IdReservacion int,
	@IdHotel nvarchar(10),
	@Habitacion nvarchar(10)
)

as

set nocount on

insert into [Reservacion-Habitacion]
(
	[IdRH],
	[IdReservacion],
	[IdHotel],
	[Habitacion]
)
values
(
	@IdRH,
	@IdReservacion,
	@IdHotel,
	@Habitacion
)
go
