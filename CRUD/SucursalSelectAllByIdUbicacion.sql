use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SucursalSelectAllByIdUbicacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SucursalSelectAllByIdUbicacion]
go

create procedure [dbo].[SucursalSelectAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

select [IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
from [Sucursal]
where [IdUbicacion] = @IdUbicacion
go
