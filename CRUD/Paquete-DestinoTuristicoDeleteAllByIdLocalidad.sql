use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-DestinoTuristicoDeleteAllByIdLocalidad]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-DestinoTuristicoDeleteAllByIdLocalidad]
go

create procedure [dbo].[Paquete-DestinoTuristicoDeleteAllByIdLocalidad]
(
	@IdLocalidad nvarchar(10)
)

as

set nocount on

delete from [Paquete-DestinoTuristico]
where [IdLocalidad] = @IdLocalidad
go
