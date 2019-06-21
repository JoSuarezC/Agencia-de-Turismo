use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PromocionUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PromocionUpdate]
go

create procedure [dbo].[PromocionUpdate]
(
	@IdPromocion nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200),
	@Porcentaje int
)

as

set nocount on

update [Promocion]
set [Nombre] = @Nombre,
	[Descripcion] = @Descripcion,
	[Porcentaje] = @Porcentaje
where [IdPromocion] = @IdPromocion
go
