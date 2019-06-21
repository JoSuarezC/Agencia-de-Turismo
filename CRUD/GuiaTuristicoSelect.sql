use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GuiaTuristicoSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GuiaTuristicoSelect]
go

create procedure [dbo].[GuiaTuristicoSelect]
(
	@IdGuia nvarchar(10)
)

as

set nocount on

select [IdGuia],
	[Nombre],
	[Apellido1],
	[Apellido2],
	[Cedula],
	[IdUbicacion]
from [GuiaTuristico]
where [IdGuia] = @IdGuia
go
