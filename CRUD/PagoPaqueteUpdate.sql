use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PagoPaqueteUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PagoPaqueteUpdate]
go

create procedure [dbo].[PagoPaqueteUpdate]
(
	@IdPagoPaquete nvarchar(10),
	@IdPaquete nvarchar(10),
	@IdPromocion nvarchar(10),
	@PrecioRegular money,
	@CantidadPersonas int
)

as

set nocount on

update [PagoPaquete]
set [IdPaquete] = @IdPaquete,
	[IdPromocion] = @IdPromocion,
	[PrecioRegular] = @PrecioRegular,
	[CantidadPersonas] = @CantidadPersonas
where [IdPagoPaquete] = @IdPagoPaquete
go
