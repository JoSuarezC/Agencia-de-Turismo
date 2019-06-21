use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-ViajeSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-ViajeSelectAll]
go

create procedure [dbo].[PDT-ViajeSelectAll]

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
go
