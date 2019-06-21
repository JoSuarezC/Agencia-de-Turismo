use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-ViajeDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-ViajeDelete]
go

create procedure [dbo].[PDT-ViajeDelete]
(
	@IdViaje nvarchar(10)
)

as

set nocount on

delete from [PDT-Viaje]
where [IdViaje] = @IdViaje
go
