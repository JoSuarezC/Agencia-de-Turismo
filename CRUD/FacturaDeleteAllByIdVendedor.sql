use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FacturaDeleteAllByIdVendedor]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FacturaDeleteAllByIdVendedor]
go

create procedure [dbo].[FacturaDeleteAllByIdVendedor]
(
	@IdVendedor nvarchar(10)
)

as

set nocount on

delete from [Factura]
where [IdVendedor] = @IdVendedor
go
