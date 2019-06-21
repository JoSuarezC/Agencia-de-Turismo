use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GuiaTuristicoSelectAllByIdUbicacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GuiaTuristicoSelectAllByIdUbicacion]
go

create procedure [dbo].[GuiaTuristicoSelectAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
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
where [IdUbicacion] = @IdUbicacion
go
