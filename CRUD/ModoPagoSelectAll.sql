use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ModoPagoSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ModoPagoSelectAll]
go

create procedure [dbo].[ModoPagoSelectAll]

as

set nocount on

select [IdModoPago],
	[Nombre],
	[Detalle]
from [ModoPago]
go
