use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CiudadUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[CiudadUpdate]
go

create procedure [dbo].[CiudadUpdate]
(
	@IdCiudad nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(100)
)

as

set nocount on

update [Ciudad]
set [Nombre] = @Nombre,
	[Descripcion] = @Descripcion
where [IdCiudad] = @IdCiudad
go
