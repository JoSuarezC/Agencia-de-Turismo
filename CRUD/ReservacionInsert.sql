use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReservacionInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ReservacionInsert]
go

create procedure [dbo].[ReservacionInsert]
(
	@IdCliente nvarchar(10),
	@IdPaquete nvarchar(10),
	@CantidadPersonas int,
	@CantidadPaquetes int
)

as

set nocount on

insert into [Reservacion]
(
	[IdCliente],
	[IdPaquete],
	[CantidadPersonas],
	[CantidadPaquetes]
)
values
(
	@IdCliente,
	@IdPaquete,
	@CantidadPersonas,
	@CantidadPaquetes
)

select scope_identity()
go
