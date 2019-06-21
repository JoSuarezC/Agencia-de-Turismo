use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AgenciaUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[AgenciaUpdate]
go

create procedure [dbo].[AgenciaUpdate]
(
	@IdAgencia int,
	@Nombre nvarchar(50),
	@Descripcion nvarchar(200)
)

as

set nocount on

update [Agencia]
set [Nombre] = @Nombre,
	[Descripcion] = @Descripcion
where [IdAgencia] = @IdAgencia
go
