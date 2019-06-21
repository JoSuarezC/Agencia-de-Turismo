use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CiudadInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[CiudadInsert]
go

create procedure [dbo].[CiudadInsert]
(
	@IdCiudad nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(100)
)

as

set nocount on

insert into [Ciudad]
(
	[IdCiudad],
	[Nombre],
	[Descripcion]
)
values
(
	@IdCiudad,
	@Nombre,
	@Descripcion
)
go
