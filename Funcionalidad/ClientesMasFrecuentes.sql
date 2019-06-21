/*
Procedimiento  para obtener clientes mas frecuentes(utilizar sucursal, fechas y paquetes como parametros opcionales)


*/


CREATE PROCEDURE ClientesMasFrecuentes @Fecha1 date, @Fecha2 date, @IdSucursal nvarchar(10)
AS
BEGIN
	Select c.IdCliente, Count(d.IdLinea) as 'Cantidad Compras'
	From PaqueteViaje pv
	inner join Reservacion r on r.IdPaquete = pv.IdPaquete
	inner join DetalleFactura d on d.IdReservacion = r.IdReservacion
	inner join Factura f on f.IdFactura = d.IdFactura
	inner join Empleado e on e.IdEmpleado = f.IdVendedor
	inner join [Empleado-Sucursal] es on es.IdEmpleado = e.IdEmpleado
	inner join Cliente c on c.IdCliente = f.IdCliente
	Where ISNULL(@IdSucursal, es.IdSucursal) = es.IdSucursal and
	f.Fecha between ISNULL(@Fecha1,'19000101') and ISNULL(@Fecha2, GETDATE())
	Group by c.IdCliente
	Order by [Cantidad Compras]

END
