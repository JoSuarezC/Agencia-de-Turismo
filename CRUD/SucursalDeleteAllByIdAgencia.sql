use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SucursalDeleteAllByIdAgencia]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SucursalDeleteAllByIdAgencia]
go

create procedure [dbo].[SucursalDeleteAllByIdAgencia]
(
	@IdAgencia int
)

as

set nocount on

delete from [Sucursal]
where [IdAgencia] = @IdAgencia
go
