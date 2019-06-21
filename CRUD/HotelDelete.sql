use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HotelDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[HotelDelete]
go

create procedure [dbo].[HotelDelete]
(
	@IdHotel nvarchar(10)
)

as

set nocount on

delete from [Hotel]
where [IdHotel] = @IdHotel
go
