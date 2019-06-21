use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaqueteViajeUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PaqueteViajeUpdate]
go

create procedure [dbo].[PaqueteViajeUpdate]
(
	@IdPaquete nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200),
	@Cantidad int
)

as

set nocount on

update [PaqueteViaje]
set [Nombre] = @Nombre,
	[Descripcion] = @Descripcion,
	[Cantidad] = @Cantidad
where [IdPaquete] = @IdPaquete
go
