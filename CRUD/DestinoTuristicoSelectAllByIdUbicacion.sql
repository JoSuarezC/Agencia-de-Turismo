use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DestinoTuristicoSelectAllByIdUbicacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DestinoTuristicoSelectAllByIdUbicacion]
go

create procedure [dbo].[DestinoTuristicoSelectAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

select [IdLocalidad],
	[IdUbicacion],
	[Nombre]
from [DestinoTuristico]
where [IdUbicacion] = @IdUbicacion
go
