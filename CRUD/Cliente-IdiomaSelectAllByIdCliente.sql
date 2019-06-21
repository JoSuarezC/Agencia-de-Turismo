use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-IdiomaSelectAllByIdCliente]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-IdiomaSelectAllByIdCliente]
go

create procedure [dbo].[Cliente-IdiomaSelectAllByIdCliente]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

select [IdCI],
	[IdCliente],
	[IdIdioma],
	[Nativo]
from [Cliente-Idioma]
where [IdCliente] = @IdCliente
go
