use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-Hotel-GarantiasInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-Hotel-GarantiasInsert]
go

create procedure [dbo].[PDT-Hotel-GarantiasInsert]
(
	@IdPHG nvarchar(10),
	@IdGarantia nvarchar(10),
	@IdPaqueteHotel nvarchar(10)
)

as

set nocount on

insert into [PDT-Hotel-Garantias]
(
	[IdPHG],
	[IdGarantia],
	[IdPaqueteHotel]
)
values
(
	@IdPHG,
	@IdGarantia,
	@IdPaqueteHotel
)
go
