use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-GuiaDeleteAllByIdPDT]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-GuiaDeleteAllByIdPDT]
go

create procedure [dbo].[PDT-GuiaDeleteAllByIdPDT]
(
	@IdPDT nvarchar(10)
)

as

set nocount on

delete from [PDT-Guia]
where [IdPDT] = @IdPDT
go
