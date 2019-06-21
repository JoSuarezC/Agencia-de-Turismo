use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-HotelDeleteAllByIdHotel]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-HotelDeleteAllByIdHotel]
go

create procedure [dbo].[PDT-HotelDeleteAllByIdHotel]
(
	@IdHotel nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel]
where [IdHotel] = @IdHotel
go
