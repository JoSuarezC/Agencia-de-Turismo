use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GarantiaHotelSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GarantiaHotelSelectAll]
go

create procedure [dbo].[GarantiaHotelSelectAll]

as

set nocount on

select [IdGarantia],
	[Descripcion]
from [GarantiaHotel]
go
