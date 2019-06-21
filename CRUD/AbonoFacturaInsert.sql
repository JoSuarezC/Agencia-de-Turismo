use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AbonoFacturaInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[AbonoFacturaInsert]
go

create procedure [dbo].[AbonoFacturaInsert]
(
	@Fecha date,
	@Monto money,
	@IdFactura nvarchar(10)
)

as

set nocount on

if not exists(select * from AbonoFactura a where a.IdAbono= @IdFactura)
	begin
	if exists(select * from Factura f where f.IdFactura = @IdFactura)
		begin
		insert into [AbonoFactura]
		(
			[Fecha],
			[Monto],
			[IdFactura]
		)
		values
		(
			@Fecha,
			@Monto,
			@IdFactura
		)
		end
	else
		begin
		Raiserror('El id de factura no existe',0,0)
		end
	end

else
	begin
	Raiserror('El id ya existe',0,0)
	end
select scope_identity()
go
