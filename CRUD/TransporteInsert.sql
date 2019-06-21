use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TransporteInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[TransporteInsert]
go

create procedure [dbo].[TransporteInsert]
(
	@IdVehiculo nvarchar(10),
	@IdTipoTransporte nvarchar(10),
	@Detalle nvarchar(50),
	@CapacidadMaxima int
)

as

set nocount on

if not exists(select * from Transporte e where e.IdVehiculo = @IdVehiculo)
begin
if exists(select * from TipoTransporte p where p.IdTipoTransporte = @IdTipoTransporte)
begin



insert into [Transporte]
(
	[IdVehiculo],
	[IdTipoTransporte],
	[Detalle],
	[CapacidadMaxima]
)
values
(
	@IdVehiculo,
	@IdTipoTransporte,
	@Detalle,
	@CapacidadMaxima
)
end
else
	begin
	Raiserror('El id de tipo de transporte no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
go
