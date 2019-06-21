use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DetalleFacturaDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DetalleFacturaDelete]
go

create procedure [dbo].[DetalleFacturaDelete]
(
	@IdLinea nvarchar(10)
)

as

set nocount on

delete from [DetalleFactura]
where [IdLinea] = @IdLinea
go
