use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AgenciaSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[AgenciaSelect]
go

create procedure [dbo].[AgenciaSelect]
(
	@IdAgencia int
)

as

set nocount on

select [IdAgencia],
	[Nombre],
	[Descripcion]
from [Agencia]
where [IdAgencia] = @IdAgencia
go
