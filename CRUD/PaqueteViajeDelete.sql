use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaqueteViajeDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PaqueteViajeDelete]
go

create procedure [dbo].[PaqueteViajeDelete]
(
	@IdPaquete nvarchar(10)
)

as

set nocount on

delete from [PaqueteViaje]
where [IdPaquete] = @IdPaquete
go
