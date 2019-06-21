use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-HotelDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-HotelDelete]
go

create procedure [dbo].[PDT-HotelDelete]
(
	@IdPH nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel]
where [IdPH] = @IdPH
go
