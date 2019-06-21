use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-DestinoTuristicoDeleteAllByIdPaquete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-DestinoTuristicoDeleteAllByIdPaquete]
go

create procedure [dbo].[Paquete-DestinoTuristicoDeleteAllByIdPaquete]
(
	@IdPaquete nvarchar(10)
)

as

set nocount on

delete from [Paquete-DestinoTuristico]
where [IdPaquete] = @IdPaquete
go
