
exec ReservacionSP '1', '1', 1, 1

ALTER PROCEDURE ReservacionSP @IdPaquete nvarchar(10), @IdCliente nvarchar(10), @CantidadPersonas int, @CantidadPaquetes int
AS
BEGIN
	if exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			if exists(SELECT * FROM PaqueteViaje pv inner join PagoPaquete pp on pp.IdPaquete = pv.IdPaquete WHERE pp.CantidadPersonas = @CantidadPersonas)
				BEGIN
					if exists(SELECT * FROM Cliente c WHERE c.IdCliente = @IdCliente)
						BEGIN
							if exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete and pv.Cantidad >= @CantidadPaquetes)
								BEGIN
									Insert into Reservacion(IdCliente, IdPaquete, CantidadPersonas, CantidadPaquetes) 
									values(@IdCliente, @IdPaquete, @CantidadPersonas, @CantidadPaquetes)	

									update PaqueteViaje
									set Cantidad = Cantidad - @CantidadPaquetes
									where IdPaquete = @IdPaquete
								END
							else
								BEGIN
									Raiserror('No hay suficiente cantidad de paquetes',0,0)
								END
						END
					else
						BEGIN
							Raiserror('El cliente no existe',0,0)
						END
				END
			else
				BEGIN
					Raiserror('El paquete no abarca esa cantidad de personas',0,0)
				END
			
		END
	else
		BEGIN
			Raiserror('El paquete no existe',0,0)
		END
END

CREATE PROCEDURE ReservarHabitacionSP @IdReservacion int, @IdHotel nvarchar(10), @Habitacion nvarchar(10)
AS
BEGIN
	if exists(SELECT * FROM Reservacion r WHERE r.IdReservacion = @IdReservacion)
		BEGIN

			if exists(
			
				SELECT * FROM Reservacion r 
				inner join PaqueteViaje pv on pv.IdPaquete = r.IdPaquete
				inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
				inner join [PDT-Hotel] ph on ph.IdPDT = pdt.IdPDT
				inner join Hotel h on h.IdHotel = ph.IdHotel
				WHERE h.IdHotel = @IdHotel
				
				)		
					BEGIN

						if not exists(
							SELECT *
							FROM Reservacion r
							inner join [Reservacion-Habitacion] rh on rh.IdReservacion = r.IdReservacion
							WHERE rh.Habitacion = @Habitacion)

							BEGIN
								insert into [Reservacion-Habitacion](IdReservacion, IdHotel, Habitacion)
								values(@IdReservacion, @IdHotel, @Habitacion)
							END
						else
							BEGIN
								Raiserror('La habitacion ya esta reservada',0,0)
							END
						
		
					END
			else
				BEGIN
					Raiserror('La hotel no se encuentra en el paquete',0,0)
				END
		END

	else
		BEGIN
			Raiserror('La reservacion no existe',0,0)
		END
END


CREATE PROCEDURE ReservarTransportenSP @IdReservacion int, @IdTransporte nvarchar(10), @Aciento nvarchar(10)
AS
BEGIN
	if exists(SELECT * FROM Reservacion r WHERE r.IdReservacion = @IdReservacion)
		BEGIN

			if exists(
			
				SELECT * FROM Reservacion r 
				inner join PaqueteViaje pv on pv.IdPaquete = r.IdPaquete
				inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
				inner join [PDT-Viaje] ph on ph.IdPDT = pdt.IdPDT
				inner join Transporte h on h.IdVehiculo = ph.IdTransporte
				WHERE h.IdVehiculo = @IdTransporte
				
				)		
					BEGIN

						if not exists(
							SELECT *
							FROM Reservacion r
							inner join [Reservacion-Transporte] rh on rh.IdReservacion = r.IdReservacion
							WHERE rh.Aciento = @Aciento)

							BEGIN
								insert into [Reservacion-Transporte](IdReservacion, IdTransporte, Aciento)
								values(@IdReservacion, @IdTransporte, @Aciento)
							END
						else
							BEGIN
								Raiserror('El aciento ya esta reservado',0,0)
							END
						
		
					END
			else
				BEGIN
					Raiserror('El transporte no se encuentra en el paquete',0,0)
				END
		END

	else
		BEGIN
			Raiserror('La reservacion no existe',0,0)
		END
END

exec EncabezadoFacturacionSP '1', '1','1','2'

ALTER PROCEDURE EncabezadoFacturacionSP @IdFactura nvarchar(10), @IdCliente nvarchar(10), @IdVendedor nvarchar(10), @IdModoPago nvarchar(10)
AS
BEGIN
	if not exists(SELECT * FROM Factura f WHERE f.IdFactura = @IdFactura)
		BEGIN
		
	
			Insert into Factura (IdFactura, IdVendedor, IdCliente, IdModoPago, Fecha, EstadoPago)
			values (@IdFactura, @IdVendedor, @IdCliente, @IdModoPago, GETDATE(), 0)
			
		END
	else
		BEGIN
			Raiserror('La factura ya existe',0,0)
		END
END

exec AgregarLineaFacturacionSP '1', '1', 1

ALTER PROCEDURE AgregarLineaFacturacionSP @IdLinea nvarchar(10), @IdFactura nvarchar(10), @IdReservacion int  
AS
BEGIN
	if exists(SELECT * FROM Reservacion r WHERE r.IdReservacion = @IdReservacion)
		BEGIN
				if exists(SELECT * FROM Factura f WHERE f.IdFactura = @IdFactura)
					BEGIN
						if not exists(SELECT * FROM DetalleFactura d WHERE d.IdLinea = @IdLinea and d.IdReservacion = @IdReservacion)
							BEGIN
								DECLARE @MontoRegular money
								DECLARE @Promo nvarchar(10)
								DECLARE @PromoPorc int

								SELECT @MontoRegular = pp.PrecioRegular, @Promo = pp.IdPromocion
								FROM Reservacion r
								inner join PaqueteViaje pv on pv.IdPaquete = r.IdPaquete
								inner join PagoPaquete pp on pp.IdPaquete = pv.IdPaquete
					--			inner join Promocion pr on pr.IdPromocion = pp.IdPromocion
								WHERE r.IdReservacion = @IdReservacion

								If @Promo <> 'NoPromo'
									BEGIN
										SELECT @PromoPorc = pr.Porcentaje
										FROM Reservacion r
										inner join PaqueteViaje pv on pv.IdPaquete = r.IdPaquete
										inner join PagoPaquete pp on pp.IdPaquete = pv.IdPaquete
										inner join Promocion pr on pr.IdPromocion = pp.IdPromocion
										WHERE r.IdReservacion = @IdReservacion

										Set @MontoRegular = @MontoRegular - (@MontoRegular * @PromoPorc)
									END
								
								DECLARE @CantidadReservaciones int
								DECLARE @CantidadPersonas int

								SELECT @CantidadReservaciones = r.CantidadPaquetes, @CantidadPersonas = r.CantidadPersonas
								FROM Reservacion r
								WHERE r.IdReservacion = @IdReservacion

								insert into DetalleFactura(IdLinea, IdFactura, IdReservacion, Precio, Cantidad, CantidadPersonas)
								values(@IdLinea, @IdFactura, @IdReservacion, @MontoRegular, @CantidadReservaciones, @CantidadPersonas)

								update Factura
								set MontoTotal = MontoTotal + @MontoRegular
								where IdFactura = @IdFactura


							END
						else
							BEGIN
								Raiserror('La linea ya existe',0,0)
							END
			
			
					END
				else
					BEGIN
						Raiserror('La factura no existe',0,0)
					END
			
		END
	else
		BEGIN
			Raiserror('La reservación no existe',0,0)
		END
END

CREATE PROCEDURE PagarFacturaSP @IdFactura nvarchar(10), @Pago money
AS
BEGIN
	if  exists(SELECT * FROM Factura f WHERE f.IdFactura = @IdFactura)
		BEGIN
			DECLARE @ModoPago nvarchar(10)
			DECLARE @MontoTotal money
			SELECT @ModoPago = m.Nombre, @MontoTotal = f.MontoTotal
			FROM Factura f 
			inner join ModoPago m on m.IdModoPago = f.IdModoPago
			WHERE f.IdFactura = @IdFactura

			if @ModoPago = 'Contado' and @Pago = @MontoTotal
				BEGIN
					update Factura
					set MontoPagado = @Pago, EstadoPago = 1
					WHERE IdFactura = @IdFactura
				END
			else
				BEGIN
					if @ModoPago = 'Apartado' and @Pago >= @MontoTotal * 0.10
						BEGIN
							insert into AbonoFactura(Fecha, Monto, IdFactura)
							values(GETDATE(), @Pago, @IdFactura)

							update Factura
							set MontoPagado = MontoPagado + @Pago
							WHERE IdFactura = @IdFactura
						END

				END
		END

END

