use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PromocionSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PromocionSelect]
go

create procedure [dbo].[PromocionSelect]
(
	@IdPromocion nvarchar(10)
)

as

set nocount on

select [IdPromocion],
	[Nombre],
	[Descripcion],
	[Porcentaje]
from [Promocion]
where [IdPromocion] = @IdPromocion
go
