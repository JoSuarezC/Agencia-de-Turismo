use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SucursalSelectAllByIdAdministrador]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SucursalSelectAllByIdAdministrador]
go

create procedure [dbo].[SucursalSelectAllByIdAdministrador]
(
	@IdAdministrador nvarchar(10)
)

as

set nocount on

select [IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
from [Sucursal]
where [IdAdministrador] = @IdAdministrador
go
