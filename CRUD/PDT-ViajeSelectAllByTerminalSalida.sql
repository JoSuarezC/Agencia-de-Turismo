use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-ViajeSelectAllByTerminalSalida]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-ViajeSelectAllByTerminalSalida]
go

create procedure [dbo].[PDT-ViajeSelectAllByTerminalSalida]
(
	@TerminalSalida nvarchar(10)
)

as

set nocount on

select [IdViaje],
	[IdPDT],
	[TerminalSalida],
	[TerminalLlegada],
	[FechaHoraSalida],
	[FechaHoraLlegada],
	[IdTransporte]
from [PDT-Viaje]
where [TerminalSalida] = @TerminalSalida
go
