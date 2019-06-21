use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-EspecificacionInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-EspecificacionInsert]
go

create procedure [dbo].[Cliente-EspecificacionInsert]
(
	@IdCE nvarchar(10),
	@IdCliente nvarchar(10),
	@IdEspecificacion nvarchar(10)
)

as

set nocount on
if not exists(select * from [Cliente-Especificacion] e where e.IdCE = @IdCE)
begin
if exists(select * from Cliente p where p.IdCliente = @IdCliente)
begin
if exists(select * from Especificacion p where p.IdEspecificacion = @IdEspecificacion)
begin


insert into [Cliente-Especificacion]
(
	[IdCE],
	[IdCliente],
	[IdEspecificacion]
)
values
(
	@IdCE,
	@IdCliente,
	@IdEspecificacion
)
END
else
	begin
	Raiserror('El id de esp no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de cliente no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
	go
