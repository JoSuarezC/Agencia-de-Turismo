use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GarantiaHotelSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GarantiaHotelSelect]
go

create procedure [dbo].[GarantiaHotelSelect]
(
	@IdGarantia nvarchar(10)
)

as

set nocount on

select [IdGarantia],
	[Descripcion]
from [GarantiaHotel]
where [IdGarantia] = @IdGarantia
go
