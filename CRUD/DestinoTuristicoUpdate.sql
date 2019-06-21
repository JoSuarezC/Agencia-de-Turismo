use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DestinoTuristicoUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DestinoTuristicoUpdate]
go

create procedure [dbo].[DestinoTuristicoUpdate]
(
	@IdLocalidad nvarchar(10),
	@IdUbicacion nvarchar(10),
	@Nombre nvarchar(50)
)

as

set nocount on

update [DestinoTuristico]
set [IdUbicacion] = @IdUbicacion,
	[Nombre] = @Nombre
where [IdLocalidad] = @IdLocalidad
go
