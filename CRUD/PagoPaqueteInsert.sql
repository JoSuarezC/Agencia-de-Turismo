use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PagoPaqueteInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PagoPaqueteInsert]
go

create procedure [dbo].[PagoPaqueteInsert]
(
	@IdPagoPaquete nvarchar(10),
	@IdPaquete nvarchar(10),
	@IdPromocion nvarchar(10),
	@PrecioRegular money,
	@CantidadPersonas int
)

as

set nocount on

insert into [PagoPaquete]
(
	[IdPagoPaquete],
	[IdPaquete],
	[IdPromocion],
	[PrecioRegular],
	[CantidadPersonas]
)
values
(
	@IdPagoPaquete,
	@IdPaquete,
	@IdPromocion,
	@PrecioRegular,
	@CantidadPersonas
)
go
