CREATE DATABASE Northwind; 

USE Northwind;

-- EJERCICIO # 1
-- Utilice la función COUNT para obtener la cantidad de empleados agrupados por ciudad


SELECT City as CUIDAD, COUNT(EmployeeID) as EMPLEADOS -- Tomamos la columna City de la tabla  Employees
  FROM Employees -- Tomamos la tabla  Employees
    GROUP BY City; -- Agrupamos 
    
-- EJERCICIO # 2 
--2. Muestra el número de clientes, la primera fecha y la fecha más reciente de la tabla orders.

SELECT COUNT(DISTINCT CustomerID) NUMERO_CLIENTE, -- Tomamos  CustomerID de la tabla Orders 
   MAX(OrderDate) FECHA_ACTUAL, -- Llamanos a la funcion MAX para tomar la fecha actual 
	 MIN(OrderDate) PRIMERA_FECHA -- Llamanos a la funcion MIN para tomar la primera fecha registrada  
        FROM Orders -- Llamos a la tabla Orders 
  
     
-- EJERCICIO # 3
-- 3. Mostrar companyName de la tabla customers, en donde el país sea Mexico y la región no sea NULL.
SELECT CompanyName AS NOMBRE_EMPRESA, Country -- Tomamos la columna CompanyName de la tabla Customers 
  FROM Customers -- Asignamos la tabla 
   WHERE Country = 'Mexico' AND Region IS NOT NULL; 
   
-- EJERCICIO # 4   
-- 4. Mostrar la cantidad de pedidos realizados por un cliente de la tabla orders en donde 
-- los pedidos sean mayores a 5 y menores a 10 (Muestre 3 resultados, el primero
-- utilizando >=,<=; el segundo utilizando BETWEEN y el tercero utilizando IN)

SELECT CustomerID  AS IDENTIFICADOR, COUNT(OrderID) as ORDENES -- Tomamos la columna CustomerID de la tabla Orders 
  FROM Orders 
    GROUP BY CustomerID -- Agrupamos los datos 
      HAVING COUNT(OrderID) >= 5 AND COUNT(OrderID) <= 10;-- Designamos las condiciones 

SELECT CustomerID AS IDENTIFICADOR , COUNT(OrderID) as ORDENES -- Tomamos la columna CustomerID de la tabla Orders 
  FROM Orders
   GROUP BY CustomerID -- Agrupamos los datos 
    HAVING COUNT(OrderID) BETWEEN 5 AND 10;-- Designamos las condiciones

SELECT CustomerID AS IDENTIFICADOR , COUNT(OrderID) as ORDENES -- Tomamos la columna CustomerID de la tabla Orders
  FROM Orders
   GROUP BY CustomerID -- Agrupamos los datos 
    HAVING COUNT(OrderID) IN(5, 6, 7, 8, 9, 10); -- Designamos las condiciones
   
    
-- EJERCICIO # 5 
-- Contar los nombres de productos que inician con la letra C
     
 SELECT ContactName AS NOMBRE_CONTACTO -- Tomanos la columna ContactName de la tabla Customers
   FROM Customers -- Asignamos la tabla Customers
    WHERE ContactName LIKE 'C%'; 
    
    
 