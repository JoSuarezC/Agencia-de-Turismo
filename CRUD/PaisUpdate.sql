use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaisUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PaisUpdate]
go

create procedure [dbo].[PaisUpdate]
(
	@IdPais nvarchar(10),
	@Nombre nvarchar(50),
	@Descripcion nvarchar(100)
)

as

set nocount on

update [Pais]
set [Nombre] = @Nombre,
	[Descripcion] = @Descripcion
where [IdPais] = @IdPais
go
