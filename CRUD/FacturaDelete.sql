use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FacturaDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FacturaDelete]
go

create procedure [dbo].[FacturaDelete]
(
	@IdFactura nvarchar(10)
)

as

set nocount on

delete from [Factura]
where [IdFactura] = @IdFactura
go
