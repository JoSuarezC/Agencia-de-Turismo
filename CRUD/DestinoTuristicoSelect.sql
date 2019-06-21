use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DestinoTuristicoSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DestinoTuristicoSelect]
go

create procedure [dbo].[DestinoTuristicoSelect]
(
	@IdLocalidad nvarchar(10)
)

as

set nocount on

select [IdLocalidad],
	[IdUbicacion],
	[Nombre]
from [DestinoTuristico]
where [IdLocalidad] = @IdLocalidad
go
