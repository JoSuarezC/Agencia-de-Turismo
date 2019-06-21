use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-GuiaDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-GuiaDelete]
go

create procedure [dbo].[PDT-GuiaDelete]
(
	@IdPG nvarchar(10)
)

as

set nocount on

delete from [PDT-Guia]
where [IdPG] = @IdPG
go
