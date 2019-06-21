use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaisSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PaisSelect]
go

create procedure [dbo].[PaisSelect]
(
	@IdPais nvarchar(10)
)

as

set nocount on

select [IdPais],
	[Nombre],
	[Descripcion]
from [Pais]
where [IdPais] = @IdPais
go
