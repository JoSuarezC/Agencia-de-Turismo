use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaisInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PaisInsert]
go

create procedure [dbo].[PaisInsert]
(
	@IdPais nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(100)
)

as

set nocount on

insert into [Pais]
(
	[IdPais],
	[Nombre],
	[Descripcion]
)
values
(
	@IdPais,
	@Nombre,
	@Descripcion
)
go
