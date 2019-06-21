use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-Hotel-GarantiasDeleteAllByIdGarantia]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-Hotel-GarantiasDeleteAllByIdGarantia]
go

create procedure [dbo].[PDT-Hotel-GarantiasDeleteAllByIdGarantia]
(
	@IdGarantia nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel-Garantias]
where [IdGarantia] = @IdGarantia
go
