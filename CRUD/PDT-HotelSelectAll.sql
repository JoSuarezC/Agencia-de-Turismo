use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-HotelSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-HotelSelectAll]
go

create procedure [dbo].[PDT-HotelSelectAll]

as

set nocount on

select [IdPH],
	[IdPDT],
	[IdHotel]
from [PDT-Hotel]
go
