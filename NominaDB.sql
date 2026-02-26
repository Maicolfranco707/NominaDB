SELECT
E.Nombre,
SUM(DN.Valor) AS TotalDeducciones
FROM Empleado E
JOIN Nomina N ON E. IdEmpleado = N.IdEmpleado
JOIN DetalleNomina DN ON N.IdNomina = DN.IdNomina
WHERE DN. Tipo = 'DEDUCCION'
GROUP BY E. Nombre;