use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-ViajeDeleteAllByTerminalSalida]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-ViajeDeleteAllByTerminalSalida]
go

create procedure [dbo].[PDT-ViajeDeleteAllByTerminalSalida]
(
	@TerminalSalida nvarchar(10)
)

as

set nocount on

delete from [PDT-Viaje]
where [TerminalSalida] = @TerminalSalida
go
