use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-ViajeInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-ViajeInsert]
go

create procedure [dbo].[PDT-ViajeInsert]
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

if not exists(select * from [PDT-Viaje] e where e.IdViaje = @IdViaje)
begin
if exists(select * from [Paquete-DestinoTuristico] p where p.IdPDT = @IdPDT)
begin
if exists(select * from Terminal p where p.IdTerminal = @TerminalLlegada)
begin
if exists(select * from Terminal p where p.IdTerminal = @TerminalSalida)
begin
if exists(select * from Transporte p where p.IdVehiculo = @IdTransporte)
begin



insert into [PDT-Viaje]
(
	[IdViaje],
	[IdPDT],
	[TerminalSalida],
	[TerminalLlegada],
	[FechaHoraSalida],
	[FechaHoraLlegada],
	[IdTransporte]
)
values
(
	@IdViaje,
	@IdPDT,
	@TerminalSalida,
	@TerminalLlegada,
	@FechaHoraSalida,
	@FechaHoraLlegada,
	@IdTransporte
)
end
else
	begin
	Raiserror('El id de transporte no existe',0,0)
	end
	end
else
	begin
	Raiserror('El id de terminal salida no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de llegada no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de pdt no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
	
	go
