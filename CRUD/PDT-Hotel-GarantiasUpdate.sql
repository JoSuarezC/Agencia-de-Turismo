use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-Hotel-GarantiasUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-Hotel-GarantiasUpdate]
go

create procedure [dbo].[PDT-Hotel-GarantiasUpdate]
(
	@IdPHG nvarchar(10),
	@IdGarantia nvarchar(10),
	@IdPaqueteHotel nvarchar(10)
)

as

set nocount on

update [PDT-Hotel-Garantias]
set [IdGarantia] = @IdGarantia,
	[IdPaqueteHotel] = @IdPaqueteHotel
where [IdPHG] = @IdPHG
go
