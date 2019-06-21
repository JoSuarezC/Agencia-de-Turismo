use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-Hotel-GarantiasDeleteAllByIdPaqueteHotel]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-Hotel-GarantiasDeleteAllByIdPaqueteHotel]
go

create procedure [dbo].[PDT-Hotel-GarantiasDeleteAllByIdPaqueteHotel]
(
	@IdPaqueteHotel nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel-Garantias]
where [IdPaqueteHotel] = @IdPaqueteHotel
go
