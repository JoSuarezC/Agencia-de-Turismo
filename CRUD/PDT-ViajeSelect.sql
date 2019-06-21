use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-ViajeSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-ViajeSelect]
go

create procedure [dbo].[PDT-ViajeSelect]
(
	@IdViaje nvarchar(10)
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
where [IdViaje] = @IdViaje
go
