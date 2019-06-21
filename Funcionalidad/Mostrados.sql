ALTER PROCEDURE MostrarPaquetes 
AS
BEGIN
	If exists(SELECT * FROM PaqueteViaje pv WHERE pv.Cantidad > 0)
		BEGIN
			SELECT  pv.IdPaquete, pv.Nombre, pv.Cantidad as 'Paquetes Disponibles', pp.PrecioRegular, 
			pp.CantidadPersonas, promo.Porcentaje as 'Promocion porcentaje'
			FROM PaqueteViaje pv
			inner join PagoPaquete pp on pp.IdPaquete = pv.IdPaquete
			full join Promocion promo on promo.IdPromocion = pp.IdPromocion
			WHERE pv.Cantidad > 0
		END
	else
		BEGIN
			Raiserror('No hay paquetes',0,0)
		END

END

GO

ALTER PROCEDURE MostrarPaqueteDestinos @IdPaquete nvarchar(10)
AS
BEGIN
	If exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			SELECT pv.IdPaquete, pv.Nombre, p.Nombre as 'País', c.Nombre as 'Ciudad', dt.Nombre as 'Destino', dt.IdLocalidad
			FROM PaqueteViaje pv
			inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
			inner join DestinoTuristico dt on dt.IdLocalidad = pdt.IdLocalidad
			inner join Ubicacion u on u.IdUbicacion = dt.IdUbicacion
			inner join Pais p on p.IdPais = u.IdPais
			inner join Ciudad c on c.IdCiudad = u.IdCiudad
			WHERE pv.IdPaquete = @IdPaquete
		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END
END

GO

exec MostrarPaqueteDestinos '1'

GO

ALTER PROCEDURE MostrarHotelesPaquete @IdPaquete nvarchar(10)
AS 
BEGIN
	If exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			IF exists(SELECT * FROM [Paquete-DestinoTuristico] pdt inner join [PDT-Hotel] h on h.IdPDT = pdt.IdPDT WHERE pdt.IdPaquete=@IdPaquete)
				BEGIN
					SELECT pv.IdPaquete, pv.Nombre, p.Nombre as 'País', c.Nombre as 'Ciudad', h.IdHotel, h.Nombre, ch.Calificacion
					FROM PaqueteViaje pv
					inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
					inner join [PDT-Hotel] pdth on pdth.IdPDT = pdt.IdPDT
					inner join Hotel h on h.IdHotel = pdth.IdHotel
					inner join DestinoTuristico dt on dt.IdLocalidad = pdt.IdLocalidad
					inner join Ubicacion u on u.IdUbicacion = dt.IdUbicacion
					inner join Pais p on p.IdPais = u.IdPais
					inner join Ciudad c on c.IdCiudad = u.IdCiudad
					inner join CalificacionHotel ch on ch.IdCalificacion = h.IdCalificacion
					WHERE pv.IdPaquete = @IdPaquete
					ORDER BY pv.IdPaquete
				END
			Else
				BEGIN
					Raiserror('No incluye hospedaje',0,0)
				END
		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END

END

GO

exec MostrarHotelesPaquete '1'

GO

CREATE PROCEDURE MostrarEspecificacionesHotel @pdth nvarchar(10)
AS 
BEGIN
	If exists(SELECT * FROM [PDT-Hotel] h WHERE h.IdPH = @pdth)
		BEGIN
			SELECT h.IdHotel, h.Nombre, gh.IdGarantia, gh.Descripcion
			FROM [PDT-Hotel] pdth
			inner join Hotel h on h.IdHotel = pdth.IdHotel
			inner join [PDT-Hotel-Garantias] pdthg on pdthg.IdPaqueteHotel = pdth.IdPH
			inner join GarantiaHotel gh on gh.IdGarantia = pdthg.IdGarantia
			WHERE pdth.IdPH = @pdth
			ORDER BY pdth.IdPH
		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END

END

GO

exec MostrarEspecificacionesHotel '1'

ALTER PROCEDURE MostrarHabitacionesDisponibles @IdHotel nvarchar(10)
AS
BEGIN
	If exists(SELECT * FROM Hotel h WHERE h.IdHotel = @IdHotel)
		BEGIN
			SELECT h.IdHotel, h.Nombre, hh.IdHabitacion, hh.TipoHabitacion, hh.NumeroHabitacion
			FROM Hotel h 
			inner join HabitacionHotel hh on hh.IdHotel = h.IdHotel
			WHERE h.IdHotel = @IdHotel and  hh.EstadoOcupacion = 0
		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END
END

GO

exec MostrarHabitacionesDisponibles '1'

GO

CREATE PROCEDURE MostrarGuiasPaquete @IdPaquete nvarchar(11)
AS
BEGIN
	if exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			IF exists(SELECT * FROM [Paquete-DestinoTuristico] pdt inner join [PDT-Guia] g on g.IdPDT = pdt.IdPDT WHERE pdt.IdPaquete=@IdPaquete)
				BEGIN
					SELECT dt.Nombre as 'Destino', g.IdGuia, g.Nombre
					FROM PaqueteViaje pv
					inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
					inner join DestinoTuristico dt on dt.IdLocalidad = pdt.IdLocalidad
					inner join Ubicacion u on u.IdUbicacion = dt.IdUbicacion
					inner join Pais p on p.IdPais = u.IdPais
					inner join Ciudad c on c.IdCiudad = u.IdCiudad
					inner join [PDT-Guia] pdtg on pdtg.IdPDT = pdt.IdPDT
					inner join GuiaTuristico g on g.IdGuia = pdtg.IdGuia
					WHERE pv.IdPaquete = @IdPaquete
				END

			Else
				BEGIN
					Raiserror('No incluye guias',0,0)
				END

		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END
END

GO

exec MostrarGuiasPaquete '1'

GO


CREATE PROCEDURE MostrarIdiomasGuia @IdGuia nvarchar(11)
AS
BEGIN
	if exists(SELECT * FROM GuiaTuristico g WHERE g.IdGuia = @IdGuia)
		BEGIN
			SELECT  g.IdGuia, g.Nombre, i.Nombre as 'Idioma'
			FROM GuiaTuristico g
			inner join [Guia-Idioma] gi on gi.IdGuia = g.IdGuia
			inner join Idioma i on i.IdIdioma = gi.IdIdioma
			WHERE g.IdGuia = @IdGuia
			group by g.IdGuia, g.Nombre, i.Nombre
			
		END
	Else
		BEGIN
			Raiserror('No existe',0,0)
		END
END

GO

exec MostrarIdiomasGuia '1'

GO

ALTER PROCEDURE MostrarTransportePaquete @IdPaquete nvarchar(10)
AS
BEGIN
	If exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			if exists(SELECT * FROM [PDT-Vehiculo] v inner join [Paquete-DestinoTuristico] pdt on pdt.IdPDT = v.IdPDT WHERE pdt.IdPaquete = @IdPaquete)
				BEGIN
					SELECT dt.Nombre as 'Destino', p.Nombre as 'Paìs', c.Nombre as 'Ciudad', v.IdVehiculo, v.Marca, v.Descripcion
					FROM PaqueteViaje pv
					inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
					inner join [PDT-Vehiculo] pdtv on pdtv.IdPDT = pdt.IdPDT
					inner join Vehiculo v on v.IdVehiculo = pdtv.IdVehiculo
					inner join DestinoTuristico dt on dt.IdLocalidad = pdt.IdLocalidad
					inner join Ubicacion u on u.IdUbicacion = dt.IdUbicacion
					inner join Pais p on p.IdPais = u.IdPais
					inner join Ciudad c on c.IdCiudad = u.IdCiudad
					WHERE pv.IdPaquete = @IdPaquete
				END
			else
				BEGIN
					Raiserror('No incluye vehiculos',0,0)
				END
		
	
		END
	else
		BEGIN
			Raiserror('No existe el paquete',0,0)
		END
	
END

GO

exec MostrarTransportePaquete '1'

GO

CREATE PROCEDURE MostrarVuelosPaquete @IdPaquete nvarchar(10)
AS
BEGIN
	If exists(SELECT * FROM PaqueteViaje pv WHERE pv.IdPaquete = @IdPaquete)
		BEGIN
			if exists(SELECT * FROM Vuelo v inner join [Paquete-DestinoTuristico] pdt on pdt.IdVuelo = v.IdVuelo WHERE pdt.IdPaquete = @IdPaquete)
				BEGIN
					SELECT dt.Nombre as 'Destino', v.AeropuertoSalida, v.AeropuertoLlegada
					FROM PaqueteViaje pv
					inner join [Paquete-DestinoTuristico] pdt on pdt.IdPaquete = pv.IdPaquete
					inner join DestinoTuristico dt on dt.IdLocalidad = pdt.IdLocalidad
					inner join Vuelo v on v.IdVuelo = pdt.IdVuelo
					WHERE pv.IdPaquete = @IdPaquete
				END
			else
				BEGIN
					Raiserror('No incluye vuelos',0,0)
				END
		
	
		END
	else
		BEGIN
			Raiserror('No existe el paquete',0,0)
		END
END
