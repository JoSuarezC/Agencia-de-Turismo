use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GuiaTuristicoUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GuiaTuristicoUpdate]
go

create procedure [dbo].[GuiaTuristicoUpdate]
(
	@IdGuia nvarchar(10),
	@Nombre nvarchar(50),
	@Apellido1 nvarchar(50),
	@Apellido2 nvarchar(50),
	@Cedula nvarchar(10),
	@IdUbicacion nvarchar(10)
)

as

set nocount on

update [GuiaTuristico]
set [Nombre] = @Nombre,
	[Apellido1] = @Apellido1,
	[Apellido2] = @Apellido2,
	[Cedula] = @Cedula,
	[IdUbicacion] = @IdUbicacion
where [IdGuia] = @IdGuia
go
