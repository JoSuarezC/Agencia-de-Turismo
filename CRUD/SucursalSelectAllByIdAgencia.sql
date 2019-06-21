use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SucursalSelectAllByIdAgencia]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SucursalSelectAllByIdAgencia]
go

create procedure [dbo].[SucursalSelectAllByIdAgencia]
(
	@IdAgencia int
)

as

set nocount on

select [IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
from [Sucursal]
where [IdAgencia] = @IdAgencia
go
