use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-HotelInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-HotelInsert]
go

create procedure [dbo].[PDT-HotelInsert]
(
	@IdPH nvarchar(10),
	@IdPDT nvarchar(10),
	@IdHotel nvarchar(10)
)

as

set nocount on
if not exists(select * from [PDT-Hotel] e where e.IdPH = @IdPH)
begin
if exists(select * from [Paquete-DestinoTuristico] p where p.IdPDT = @IdPDT)
begin
if exists(select * from Hotel p where p.IdCalificacion = @IdHotel)
begin


insert into [PDT-Hotel]
(
	[IdPH],
	[IdPDT],
	[IdHotel]
)
values
(
	@IdPH,
	@IdPDT,
	@IdHotel
)
end
else
	begin
	Raiserror('El id de hotel no existe',0,0)
	end

end
else
	begin
	Raiserror('El id de pdt no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
go
