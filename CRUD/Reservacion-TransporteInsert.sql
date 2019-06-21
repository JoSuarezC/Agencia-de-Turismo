use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Reservacion-TransporteInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Reservacion-TransporteInsert]
go

create procedure [dbo].[Reservacion-TransporteInsert]
(
	@IdRT int,
	@IdReservacion int,
	@IdTransporte nvarchar(10),
	@Aciento nvarchar(10)
)

as

set nocount on

insert into [Reservacion-Transporte]
(
	[IdRT],
	[IdReservacion],
	[IdTransporte],
	[Aciento]
)
values
(
	@IdRT,
	@IdReservacion,
	@IdTransporte,
	@Aciento
)
go
