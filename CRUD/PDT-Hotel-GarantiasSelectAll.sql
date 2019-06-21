use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-Hotel-GarantiasSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-Hotel-GarantiasSelectAll]
go

create procedure [dbo].[PDT-Hotel-GarantiasSelectAll]

as

set nocount on

select [IdPHG],
	[IdGarantia],
	[IdPaqueteHotel]
from [PDT-Hotel-Garantias]
go
