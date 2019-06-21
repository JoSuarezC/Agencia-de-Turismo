use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PromocionInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PromocionInsert]
go

create procedure [dbo].[PromocionInsert]
(
	@IdPromocion nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200),
	@Porcentaje int
)

as

set nocount on

insert into [Promocion]
(
	[IdPromocion],
	[Nombre],
	[Descripcion],
	[Porcentaje]
)
values
(
	@IdPromocion,
	@Nombre,
	@Descripcion,
	@Porcentaje
)
go
