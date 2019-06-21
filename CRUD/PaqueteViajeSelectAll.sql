use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaqueteViajeSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PaqueteViajeSelectAll]
go

create procedure [dbo].[PaqueteViajeSelectAll]

as

set nocount on

select [IdPaquete],
	[Nombre],
	[Descripcion],
	[Cantidad]
from [PaqueteViaje]
go
