CREATE DATABASE IF NOT EXISTS db_alertas;
CREATE DATABASE IF NOT EXISTS db_reportes;
CREATE DATABASE IF NOT EXISTS db_usuarios;
USE db_reportes;

DELIMITER //
CREATE PROCEDURE ObtenerReportesPorEstado()
BEGIN
SELECT estado, COUNT(*) as cantidad
FROM reporte_incendio
GROUP BY estado;
END //
DELIMITER ;