use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ModoPagoSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ModoPagoSelect]
go

create procedure [dbo].[ModoPagoSelect]
(
	@IdModoPago nvarchar(10)
)

as

set nocount on

select [IdModoPago],
	[Nombre],
	[Detalle]
from [ModoPago]
where [IdModoPago] = @IdModoPago
go
