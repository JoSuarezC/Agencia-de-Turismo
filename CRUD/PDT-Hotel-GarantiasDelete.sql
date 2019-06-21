use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-Hotel-GarantiasDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-Hotel-GarantiasDelete]
go

create procedure [dbo].[PDT-Hotel-GarantiasDelete]
(
	@IdPHG nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel-Garantias]
where [IdPHG] = @IdPHG
go
