use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ModoPagoUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ModoPagoUpdate]
go

create procedure [dbo].[ModoPagoUpdate]
(
	@IdModoPago nvarchar(10),
	@Nombre nvarchar(30),
	@Detalle nvarchar(200)
)

as

set nocount on

update [ModoPago]
set [Nombre] = @Nombre,
	[Detalle] = @Detalle
where [IdModoPago] = @IdModoPago
go
