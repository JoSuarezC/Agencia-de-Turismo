CREATE PROCEDURE ObteciónBoleta @IdReservacion nvarchar(10)
AS
BEGIN
	if exists(SELECT * FROM Reservacion r WHERE r.IdReservacion = @IdReservacion)
		BEGIN
			SELECT rh.IdHotel, rh.Habitacion, rt.IdTransporte, rt.Aciento
			FROM Reservacion r
			inner join [Reservacion-Habitacion] rh on rh.IdReservacion =  r.IdReservacion
			inner join [Reservacion-Transporte] rt on rt.IdReservacion = r.IdReservacion
			WHERE r.IdReservacion = @IdReservacion
			
		END
	else
		BEGIN
			Raiserror('La reservación no existe',0,0)
		END
END