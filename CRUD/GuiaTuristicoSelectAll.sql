use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GuiaTuristicoSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GuiaTuristicoSelectAll]
go

create procedure [dbo].[GuiaTuristicoSelectAll]

as

set nocount on

select [IdGuia],
	[Nombre],
	[Apellido1],
	[Apellido2],
	[Cedula],
	[IdUbicacion]
from [GuiaTuristico]
go
