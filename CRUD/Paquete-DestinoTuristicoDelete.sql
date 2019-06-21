use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-DestinoTuristicoDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-DestinoTuristicoDelete]
go

create procedure [dbo].[Paquete-DestinoTuristicoDelete]
(
	@IdPDT nvarchar(10)
)

as

set nocount on

delete from [Paquete-DestinoTuristico]
where [IdPDT] = @IdPDT
go
