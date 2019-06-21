use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-GuiaInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-GuiaInsert]
go

create procedure [dbo].[PDT-GuiaInsert]
(
	@IdPG nvarchar(10),
	@IdPDT nvarchar(10),
	@IdGuia nvarchar(10)
)

as

set nocount on

if not exists(select * from [PDT-Guia] e where e.IdPG = @IdPG)
begin
if exists(select * from [Paquete-DestinoTuristico] p where p.IdPDT = @IdPDT)
begin
if exists(select * from GuiaTuristico p where p.IdGuia= @IdGuia)
begin



insert into [PDT-Guia]
(
	[IdPG],
	[IdPDT],
	[IdGuia]

)
values
(
	@IdPG,
	@IdPDT,
	@IdGuia
)
end
else
	begin
	Raiserror('El id de guia no existe',0,0)
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
