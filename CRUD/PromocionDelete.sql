use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PromocionDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PromocionDelete]
go

create procedure [dbo].[PromocionDelete]
(
	@IdPromocion nvarchar(10)
)

as

set nocount on

delete from [Promocion]
where [IdPromocion] = @IdPromocion
go
