use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GuiaTuristicoDeleteAllByIdUbicacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GuiaTuristicoDeleteAllByIdUbicacion]
go

create procedure [dbo].[GuiaTuristicoDeleteAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [GuiaTuristico]
where [IdUbicacion] = @IdUbicacion
go
