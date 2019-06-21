use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DestinoTuristicoDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DestinoTuristicoDelete]
go

create procedure [dbo].[DestinoTuristicoDelete]
(
	@IdLocalidad nvarchar(10)
)

as

set nocount on

delete from [DestinoTuristico]
where [IdLocalidad] = @IdLocalidad
go
