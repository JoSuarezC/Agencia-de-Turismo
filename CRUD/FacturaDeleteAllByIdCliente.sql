use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FacturaDeleteAllByIdCliente]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[FacturaDeleteAllByIdCliente]
go

create procedure [dbo].[FacturaDeleteAllByIdCliente]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

delete from [Factura]
where [IdCliente] = @IdCliente
go
