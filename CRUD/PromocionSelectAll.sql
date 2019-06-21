use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PromocionSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PromocionSelectAll]
go

create procedure [dbo].[PromocionSelectAll]

as

set nocount on

select [IdPromocion],
	[Nombre],
	[Descripcion],
	[Porcentaje]
from [Promocion]
go
