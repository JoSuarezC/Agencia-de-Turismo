use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FacturaDeleteAllByIdModoPago]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FacturaDeleteAllByIdModoPago]
go

create procedure [dbo].[FacturaDeleteAllByIdModoPago]
(
	@IdModoPago nvarchar(10)
)

as

set nocount on

delete from [Factura]
where [IdModoPago] = @IdModoPago
go
