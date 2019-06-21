use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-HotelSelectAllByIdPDT]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-HotelSelectAllByIdPDT]
go

create procedure [dbo].[PDT-HotelSelectAllByIdPDT]
(
	@IdPDT nvarchar(10)
)

as

set nocount on

select [IdPH],
	[IdPDT],
	[IdHotel]
from [PDT-Hotel]
where [IdPDT] = @IdPDT
go
