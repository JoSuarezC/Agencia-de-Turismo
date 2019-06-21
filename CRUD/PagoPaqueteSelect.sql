use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PagoPaqueteSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PagoPaqueteSelect]
go

create procedure [dbo].[PagoPaqueteSelect]
(
	@IdPagoPaquete nvarchar(10)
)

as

set nocount on

select [IdPagoPaquete],
	[IdPaquete],
	[IdPromocion],
	[PrecioRegular],
	[CantidadPersonas]
from [PagoPaquete]
where [IdPagoPaquete] = @IdPagoPaquete
go
