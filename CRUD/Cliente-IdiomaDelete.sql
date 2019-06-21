use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-IdiomaDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-IdiomaDelete]
go

create procedure [dbo].[Cliente-IdiomaDelete]
(
	@IdCI nvarchar(10)
)

as

set nocount on

delete from [Cliente-Idioma]
where [IdCI] = @IdCI
go
