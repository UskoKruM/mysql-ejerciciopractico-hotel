-- Triggers

DELIMITER //

CREATE TRIGGER tr_ActualizarDisponibilidadHabitacion 
AFTER INSERT ON alquiler
FOR EACH ROW
BEGIN
	UPDATE habitacion
    SET disponible = 0
    WHERE id = NEW.habitacion_id;
END //

DELIMITER ;