use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AgenciaInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[AgenciaInsert]
go

create procedure [dbo].[AgenciaInsert]
(
	@IdAgencia int,
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200)
)

as

set nocount on

insert into [Agencia]
(
	[IdAgencia],
	[Nombre],
	[Descripcion]
)
values
(
	@IdAgencia,
	@Nombre,
	@Descripcion
)
go
