use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PuestoTrabajoInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PuestoTrabajoInsert]
go

create procedure [dbo].[PuestoTrabajoInsert]
(
	@IdPuesto nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200)
)

as

set nocount on
if not exists(select * from PuestoTrabajo e where e.IdPuesto = @IdPuesto)
begin


insert into [PuestoTrabajo]
(
	[IdPuesto],
	[Nombre],
	[Descripcion]
)
values
(
	@IdPuesto,
	@Nombre,
	@Descripcion
)

end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
	
	go
