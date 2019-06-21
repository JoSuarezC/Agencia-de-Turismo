use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-HotelSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-HotelSelect]
go

create procedure [dbo].[PDT-HotelSelect]
(
	@IdPH nvarchar(10)
)

as

set nocount on

select [IdPH],
	[IdPDT],
	[IdHotel]
from [PDT-Hotel]
where [IdPH] = @IdPH
go
