use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GarantiaHotelUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GarantiaHotelUpdate]
go

create procedure [dbo].[GarantiaHotelUpdate]
(
	@IdGarantia nvarchar(10),
	@Descripcion nvarchar(200)
)

as

set nocount on

update [GarantiaHotel]
set [Descripcion] = @Descripcion
where [IdGarantia] = @IdGarantia
go
