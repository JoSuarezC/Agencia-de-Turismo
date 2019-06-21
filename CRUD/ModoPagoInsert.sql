use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ModoPagoInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ModoPagoInsert]
go

create procedure [dbo].[ModoPagoInsert]
(
	@IdModoPago nvarchar(10),
	@Nombre nvarchar(30),
	@Detalle nvarchar(200)
)

as

set nocount on

insert into [ModoPago]
(
	[IdModoPago],
	[Nombre],
	[Detalle]
)
values
(
	@IdModoPago,
	@Nombre,
	@Detalle
)
go
