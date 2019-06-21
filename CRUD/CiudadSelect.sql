use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CiudadSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[CiudadSelect]
go

create procedure [dbo].[CiudadSelect]
(
	@IdCiudad nvarchar(10)
)

as

set nocount on

select [IdCiudad],
	[Nombre],
	[Descripcion]
from [Ciudad]
where [IdCiudad] = @IdCiudad
go
