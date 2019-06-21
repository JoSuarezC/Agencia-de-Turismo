use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-DestinoTuristicoSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-DestinoTuristicoSelect]
go

create procedure [dbo].[Paquete-DestinoTuristicoSelect]
(
	@IdPDT nvarchar(10)
)

as

set nocount on

select [IdPDT],
	[IdPaquete],
	[IdLocalidad]
from [Paquete-DestinoTuristico]
where [IdPDT] = @IdPDT
go
