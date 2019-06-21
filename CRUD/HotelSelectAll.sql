use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[HotelSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[HotelSelectAll]
go

create procedure [dbo].[HotelSelectAll]

as

set nocount on

select [IdHotel],
	[IdUbicacion],
	[Nombre],
	[IdCalificacion]
from [Hotel]
go
