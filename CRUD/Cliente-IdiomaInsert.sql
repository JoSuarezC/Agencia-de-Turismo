use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Cliente-IdiomaInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Cliente-IdiomaInsert]
go

create procedure [dbo].[Cliente-IdiomaInsert]
(
	@IdCI nvarchar(10),
	@IdCliente nvarchar(10),
	@IdIdioma nvarchar(10),
	@Nativo bit
)

as

set nocount on
if not exists(select * from [Cliente-Idioma] e where e.IdCI = @IdCI)
begin
if exists(select * from Cliente p where p.IdCliente = @IdCliente)
begin
if exists(select * from Idioma p where p.IdIdioma = @IdIdioma)
begin


insert into [Cliente-Idioma]
(
	[IdCI],
	[IdCliente],
	[IdIdioma],
	[Nativo]
)
values
(
	@IdCI,
	@IdCliente,
	@IdIdioma,
	@Nativo
)

end
else
	begin
	Raiserror('El id de idioma no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de cliente no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
	go
