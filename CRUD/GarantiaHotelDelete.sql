use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GarantiaHotelDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GarantiaHotelDelete]
go

create procedure [dbo].[GarantiaHotelDelete]
(
	@IdGarantia nvarchar(10)
)

as

set nocount on

delete from [GarantiaHotel]
where [IdGarantia] = @IdGarantia
go
