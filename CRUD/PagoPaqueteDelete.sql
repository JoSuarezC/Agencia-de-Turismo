use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PagoPaqueteDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PagoPaqueteDelete]
go

create procedure [dbo].[PagoPaqueteDelete]
(
	@IdPagoPaquete nvarchar(10)
)

as

set nocount on

delete from [PagoPaquete]
where [IdPagoPaquete] = @IdPagoPaquete
go
