use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GuiaTuristicoInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GuiaTuristicoInsert]
go

create procedure [dbo].[GuiaTuristicoInsert]
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

insert into [GuiaTuristico]
(
	[IdGuia],
	[Nombre],
	[Apellido1],
	[Apellido2],
	[Cedula],
	[IdUbicacion]
)
values
(
	@IdGuia,
	@Nombre,
	@Apellido1,
	@Apellido2,
	@Cedula,
	@IdUbicacion
)
go
