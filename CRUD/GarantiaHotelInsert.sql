use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GarantiaHotelInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GarantiaHotelInsert]
go

create procedure [dbo].[GarantiaHotelInsert]
(
	@IdGarantia nvarchar(10),
	@Descripcion nvarchar(200)
)

as

set nocount on

insert into [GarantiaHotel]
(
	[IdGarantia],
	[Descripcion]
)
values
(
	@IdGarantia,
	@Descripcion
)
go
