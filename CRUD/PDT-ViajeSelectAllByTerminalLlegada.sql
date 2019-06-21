use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-ViajeSelectAllByTerminalLlegada]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-ViajeSelectAllByTerminalLlegada]
go

create procedure [dbo].[PDT-ViajeSelectAllByTerminalLlegada]
(
	@TerminalLlegada nvarchar(10)
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
where [TerminalLlegada] = @TerminalLlegada
go
