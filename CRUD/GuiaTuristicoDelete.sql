use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GuiaTuristicoDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[GuiaTuristicoDelete]
go

create procedure [dbo].[GuiaTuristicoDelete]
(
	@IdGuia nvarchar(10)
)

as

set nocount on

delete from [GuiaTuristico]
where [IdGuia] = @IdGuia
go
