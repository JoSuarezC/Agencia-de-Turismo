use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaqueteViajeInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PaqueteViajeInsert]
go

create procedure [dbo].[PaqueteViajeInsert]
(
	@IdPaquete nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200),
	@Cantidad int
)

as

set nocount on

if not exists(select * from PaqueteViaje e where e.IdPaquete = @IdPaquete)
begin



insert into [PaqueteViaje]
(
	[IdPaquete],
	[Nombre],
	[Descripcion],
	[Cantidad]
)
values
(
	@IdPaquete,
	@Nombre,
	@Descripcion,
	@Cantidad
)

end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
	
	go
