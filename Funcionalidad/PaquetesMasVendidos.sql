



CREATE PROCEDURE PaquetesMasVendidos @Fecha1 date, @Fecha2 date, @IdSucursal nvarchar(10)
AS
BEGIN
	Select pv.IdPaquete, Count(d.IdReservacion) as 'Cantidad'
	From PaqueteViaje pv
	inner join Reservacion r on r.IdPaquete = pv.IdPaquete
	inner join DetalleFactura d on d.IdReservacion = r.IdReservacion
	inner join Factura f on f.IdFactura = d.IdFactura
	inner join Empleado e on e.IdEmpleado = f.IdVendedor
	inner join [Empleado-Sucursal] es on es.IdEmpleado = e.IdEmpleado
	Where ISNULL(@IdSucursal, es.IdSucursal) = es.IdSucursal and
	f.Fecha between ISNULL(@Fecha1,'19000101') and ISNULL(@Fecha2, GETDATE())

	Group by pv.IdPaquete
	Order by [Cantidad] DESC

			
END

