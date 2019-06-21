use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DestinoTuristicoDeleteAllByIdUbicacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DestinoTuristicoDeleteAllByIdUbicacion]
go

create procedure [dbo].[DestinoTuristicoDeleteAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [DestinoTuristico]
where [IdUbicacion] = @IdUbicacion
go
