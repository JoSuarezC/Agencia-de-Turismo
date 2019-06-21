use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[IdiomaInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[IdiomaInsert]
go

create procedure [dbo].[IdiomaInsert]
(
	@IdIdioma nvarchar(10),
	@Nombre nvarchar(50)
)

as

set nocount on
if not exists(select * from Idioma e where e.IdIdioma = @IdIdioma)
begin


insert into [Idioma]
(
	[IdIdioma],
	[Nombre]
)
values
(
	@IdIdioma,
	@Nombre
)
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
	
	go
