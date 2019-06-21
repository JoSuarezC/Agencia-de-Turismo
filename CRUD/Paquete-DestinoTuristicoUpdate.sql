use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-DestinoTuristicoUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-DestinoTuristicoUpdate]
go

create procedure [dbo].[Paquete-DestinoTuristicoUpdate]
(
	@IdPDT nvarchar(10),
	@IdPaquete nvarchar(10),
	@IdLocalidad nvarchar(10)
)

as

set nocount on

update [Paquete-DestinoTuristico]
set [IdPaquete] = @IdPaquete,
	[IdLocalidad] = @IdLocalidad
where [IdPDT] = @IdPDT
go
