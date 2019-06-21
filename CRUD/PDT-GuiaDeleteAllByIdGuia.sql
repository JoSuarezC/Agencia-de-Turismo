use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-GuiaDeleteAllByIdGuia]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-GuiaDeleteAllByIdGuia]
go

create procedure [dbo].[PDT-GuiaDeleteAllByIdGuia]
(
	@IdGuia nvarchar(10)
)

as

set nocount on

delete from [PDT-Guia]
where [IdGuia] = @IdGuia
go
