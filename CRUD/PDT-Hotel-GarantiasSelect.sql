use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-Hotel-GarantiasSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-Hotel-GarantiasSelect]
go

create procedure [dbo].[PDT-Hotel-GarantiasSelect]
(
	@IdPHG nvarchar(10)
)

as

set nocount on

select [IdPHG],
	[IdGarantia],
	[IdPaqueteHotel]
from [PDT-Hotel-Garantias]
where [IdPHG] = @IdPHG
go
