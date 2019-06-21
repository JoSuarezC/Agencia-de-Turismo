use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaisDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PaisDelete]
go

create procedure [dbo].[PaisDelete]
(
	@IdPais nvarchar(10)
)

as

set nocount on

delete from [Pais]
where [IdPais] = @IdPais
go
