use evaluacion_continua;

-- 1. Total de Ventas por Producto
SELECT Productos.nombre, Detalles_pedidos.id_pedido, Detalles_pedidos.cantidad FROM Detalles_pedidos
INNER JOIN Productos ON Productos.id_producto = Detalles_pedidos.id_pedido
ORDER BY Detalles_pedidos.cantidad DESC;


-- 2. Último Pedido de Cada Cliente
SELECT pedidos.id_cliente, pedidos.id_pedido, pedidos.fecha_pedido, pedidos.estado, clientes.nombre FROM pedidos, clientes
ORDER BY pedidos.fecha_pedido DESC LIMIT 14;


-- 3. Número de Pedidos por Ciudad
SELECT clientes.ciudad, SUM(DISTINCT detalles_pedidos.cantidad) AS total_pedidos FROM Clientes, Detalles_Pedidos
GROUP BY clientes.ciudad;


-- 4. Productos que Nunca se Han Vendido
SELECT p.id_producto, p.nombre, d.estado from Productos p, Pedidos d
WHERE estado NOT LIKE '%ent%';


-- 5. Productos Más Vendidos por Cantidad
SELECT Productos.nombre, Detalles_Pedidos.id_pedido, Detalles_Pedidos.id_producto, Detalles_Pedidos.cantidad FROM Detalles_Pedidos, Productos
ORDER BY Detalles_Pedidos.cantidad DESC LIMIT 14;


-- 6. Clientes con Compras en Múltiples Categorías
SELECT c.nombre, p.categoría, d.cantidad FROM Clientes c, Productos p, Detalles_pedidos d
ORDER BY c.nombre;


-- 7. Ventas Totales por Mes:
SELECT Productos.id_producto, Productos.nombre, Detalles_Pedidos.cantidad, 
EXTRACT(YEAR FROM pedidos.fecha_pedido) AS año,
EXTRACT(MONTH FROM pedidos.fecha_pedido) AS mes
FROM Pedidos, Detalles_Pedidos, Productos

ORDER BY año, mes;


-- 8. Promedio de Productos por Pedido:


-- 9. Tasa de Retención de Clientes:


-- 10. Tiempo Promedio entre Pedidos:



