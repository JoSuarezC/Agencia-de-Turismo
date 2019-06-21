use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CiudadDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[CiudadDelete]
go

create procedure [dbo].[CiudadDelete]
(
	@IdCiudad nvarchar(10)
)

as

set nocount on

delete from [Ciudad]
where [IdCiudad] = @IdCiudad
go
