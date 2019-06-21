use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-DestinoTuristicoSelectAllByIdPaquete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-DestinoTuristicoSelectAllByIdPaquete]
go

create procedure [dbo].[Paquete-DestinoTuristicoSelectAllByIdPaquete]
(
	@IdPaquete nvarchar(10)
)

as

set nocount on

select [IdPDT],
	[IdPaquete],
	[IdLocalidad]
from [Paquete-DestinoTuristico]
where [IdPaquete] = @IdPaquete
go
