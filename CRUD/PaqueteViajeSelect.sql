use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaqueteViajeSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PaqueteViajeSelect]
go

create procedure [dbo].[PaqueteViajeSelect]
(
	@IdPaquete nvarchar(10)
)

as

set nocount on

select [IdPaquete],
	[Nombre],
	[Descripcion],
	[Cantidad]
from [PaqueteViaje]
where [IdPaquete] = @IdPaquete
go
