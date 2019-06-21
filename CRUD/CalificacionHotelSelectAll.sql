use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CalificacionHotelSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[CalificacionHotelSelectAll]
go

create procedure [dbo].[CalificacionHotelSelectAll]

as

set nocount on

select [IdCalificacion],
	[Calificacion]
from [CalificacionHotel]
go
