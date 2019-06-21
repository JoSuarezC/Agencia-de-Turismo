use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ClienteDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ClienteDelete]
go

create procedure [dbo].[ClienteDelete]
(
	@IdCliente nvarchar(10)
)

as

set nocount on

delete from [Cliente]
where [IdCliente] = @IdCliente
go
