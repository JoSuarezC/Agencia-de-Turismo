use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-HotelSelectAllByIdHotel]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-HotelSelectAllByIdHotel]
go

create procedure [dbo].[PDT-HotelSelectAllByIdHotel]
(
	@IdHotel nvarchar(10)
)

as

set nocount on

select [IdPH],
	[IdPDT],
	[IdHotel]
from [PDT-Hotel]
where [IdHotel] = @IdHotel
go
