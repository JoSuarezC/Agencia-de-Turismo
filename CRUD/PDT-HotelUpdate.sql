use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-HotelUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-HotelUpdate]
go

create procedure [dbo].[PDT-HotelUpdate]
(
	@IdPH nvarchar(10),
	@IdPDT nvarchar(10),
	@IdHotel nvarchar(10)
)

as

set nocount on

update [PDT-Hotel]
set [IdPDT] = @IdPDT,
	[IdHotel] = @IdHotel
where [IdPH] = @IdPH
go
