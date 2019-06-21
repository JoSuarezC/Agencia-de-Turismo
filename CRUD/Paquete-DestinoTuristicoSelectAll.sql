use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-DestinoTuristicoSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-DestinoTuristicoSelectAll]
go

create procedure [dbo].[Paquete-DestinoTuristicoSelectAll]

as

set nocount on

select [IdPDT],
	[IdPaquete],
	[IdLocalidad]
from [Paquete-DestinoTuristico]
go
