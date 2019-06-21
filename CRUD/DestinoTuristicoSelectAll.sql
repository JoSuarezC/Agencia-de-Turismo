use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DestinoTuristicoSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[DestinoTuristicoSelectAll]
go

create procedure [dbo].[DestinoTuristicoSelectAll]

as

set nocount on

select [IdLocalidad],
	[IdUbicacion],
	[Nombre]
from [DestinoTuristico]
go
