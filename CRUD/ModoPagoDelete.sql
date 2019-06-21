use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ModoPagoDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ModoPagoDelete]
go

create procedure [dbo].[ModoPagoDelete]
(
	@IdModoPago nvarchar(10)
)

as

set nocount on

delete from [ModoPago]
where [IdModoPago] = @IdModoPago
go
