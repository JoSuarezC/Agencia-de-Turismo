use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TipoTransporteInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[TipoTransporteInsert]
go

create procedure [dbo].[TipoTransporteInsert]
(
	@IdTipoTransporte nvarchar(10),
	@Nombre nvarchar(50),
	@Detalle nvarchar(300)
)

as

set nocount on
if not exists(select * from TipoTransporte e where e.IdTipoTransporte = @IdTipoTransporte)
begin


insert into [TipoTransporte]
(
	[IdTipoTransporte],
	[Nombre],
	[Detalle]
)
values
(
	@IdTipoTransporte,
	@Nombre,
	@Detalle
)

end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
	
go
