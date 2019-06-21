use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-DestinoTuristicoSelectAllByIdLocalidad]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-DestinoTuristicoSelectAllByIdLocalidad]
go

create procedure [dbo].[Paquete-DestinoTuristicoSelectAllByIdLocalidad]
(
	@IdLocalidad nvarchar(10)
)

as

set nocount on

select [IdPDT],
	[IdPaquete],
	[IdLocalidad]
from [Paquete-DestinoTuristico]
where [IdLocalidad] = @IdLocalidad
go
