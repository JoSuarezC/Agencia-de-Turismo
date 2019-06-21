use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-IdiomaDeleteAllByIdCliente]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-IdiomaDeleteAllByIdCliente]
go

create procedure [dbo].[Cliente-IdiomaDeleteAllByIdCliente]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

delete from [Cliente-Idioma]
where [IdCliente] = @IdCliente
go
