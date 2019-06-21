use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-ViajeUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-ViajeUpdate]
go

create procedure [dbo].[PDT-ViajeUpdate]
(
	@IdViaje nvarchar(10),
	@IdPDT nvarchar(10),
	@TerminalSalida nvarchar(10),
	@TerminalLlegada nvarchar(10),
	@FechaHoraSalida nvarchar(10),
	@FechaHoraLlegada nvarchar(10),
	@IdTransporte nvarchar(10)
)

as

set nocount on

update [PDT-Viaje]
set [IdPDT] = @IdPDT,
	[TerminalSalida] = @TerminalSalida,
	[TerminalLlegada] = @TerminalLlegada,
	[FechaHoraSalida] = @FechaHoraSalida,
	[FechaHoraLlegada] = @FechaHoraLlegada,
	[IdTransporte] = @IdTransporte
where [IdViaje] = @IdViaje
go
