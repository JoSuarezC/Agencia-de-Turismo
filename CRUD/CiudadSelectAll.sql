use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CiudadSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[CiudadSelectAll]
go

create procedure [dbo].[CiudadSelectAll]

as

set nocount on

select [IdCiudad],
	[Nombre],
	[Descripcion]
from [Ciudad]
go
