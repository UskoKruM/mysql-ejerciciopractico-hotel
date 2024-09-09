-- 1
SELECT PAI.nombre AS País, SUM(ALQ.total) AS Total
	FROM alquiler ALQ
    JOIN cliente CLI ON ALQ.cliente_id = CLI.id
    JOIN pais PAI ON CLI.pais_id = PAI.id
    GROUP BY PAI.nombre
    ORDER BY 2 DESC
	LIMIT 1;

-- 2	
SELECT TIPHAB.nombre AS TipoHabitacion, SUM(ALQ.total) AS Total
	FROM alquiler ALQ
    JOIN habitacion HAB ON ALQ.habitacion_id = HAB.id
    JOIN tipohabitacion TIPHAB ON HAB.tipohabitacion_id = TIPHAB.id
    GROUP BY TIPHAB.nombre
    ORDER BY 2 DESC
    LIMIT 1;
	
-- 3
SELECT MONTH(ALQ.fechaentrada) AS NumeroMes, MONTHNAME(ALQ.fechaentrada) AS Mes, SUM(ALQ.total) AS Total
	FROM alquiler ALQ
    GROUP BY MONTH(ALQ.fechaentrada)
    ORDER BY 3 DESC
    LIMIT 1;
	
-- 4
SELECT MED.nombre AS 'Medio de Pago', SUM(ALQ.total) AS Total
	FROM alquiler ALQ
    JOIN mediopago MED ON ALQ.mediopago_id = MED.id
    GROUP BY MED.nombre
    ORDER BY 2 DESC
    LIMIT 1;

-- 5	
SELECT 'Comparación', 
    (SELECT SUM(ALQ.total)
	FROM alquiler ALQ
    JOIN cliente CLI ON ALQ.cliente_id = CLI.id
    JOIN pais PAI ON CLI.pais_id = PAI.id
    WHERE PAI.id = 1) AS 'Fuente Nacional',
    (SELECT SUM(ALQ.total)
	FROM alquiler ALQ
    JOIN cliente CLI ON ALQ.cliente_id = CLI.id
    JOIN pais PAI ON CLI.pais_id = PAI.id
    WHERE PAI.id != 1) AS 'Fuente Extranjera';
	
-- 6
SELECT ROUND(AVG(dias)) AS 'Promedio de días' FROM alquiler;

-- 7
SELECT MONTHNAME(ALQ1.fechaentrada) AS 'Mes con el alquiler más costoso'
	FROM alquiler ALQ1
	WHERE ALQ1.total = (SELECT MAX(ALQ2.total) FROM alquiler ALQ2);
	
-- 8
SELECT * FROM habitacion WHERE disponible = 1;