use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Paquete-DestinoTuristicoInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Paquete-DestinoTuristicoInsert]
go

create procedure [dbo].[Paquete-DestinoTuristicoInsert]
(
	@IdPDT nvarchar(10),
	@IdPaquete nvarchar(10),
	@IdLocalidad nvarchar(10)
)

as

set nocount on

insert into [Paquete-DestinoTuristico]
(
	[IdPDT],
	[IdPaquete],
	[IdLocalidad]
)
values
(
	@IdPDT,
	@IdPaquete,
	@IdLocalidad
)
go
