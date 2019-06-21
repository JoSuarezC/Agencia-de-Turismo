use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PDT-HotelDeleteAllByIdPDT]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[PDT-HotelDeleteAllByIdPDT]
go

create procedure [dbo].[PDT-HotelDeleteAllByIdPDT]
(
	@IdPDT nvarchar(10)
)

as

set nocount on

delete from [PDT-Hotel]
where [IdPDT] = @IdPDT
go
