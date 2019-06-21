use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-ViajeDeleteAllByTerminalLlegada]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-ViajeDeleteAllByTerminalLlegada]
go

create procedure [dbo].[PDT-ViajeDeleteAllByTerminalLlegada]
(
	@TerminalLlegada nvarchar(10)
)

as

set nocount on

delete from [PDT-Viaje]
where [TerminalLlegada] = @TerminalLlegada
go
