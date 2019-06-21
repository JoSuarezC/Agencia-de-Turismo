use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SucursalSelectAllByIdSucursal]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SucursalSelectAllByIdSucursal]
go

create procedure [dbo].[SucursalSelectAllByIdSucursal]
(
	@IdSucursal nvarchar(10)
)

as

set nocount on

select [IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
from [Sucursal]
where [IdSucursal] = @IdSucursal
go
