use actividades;

/*Ex 1.1*/
select nombre from articulos;

/*Ex 1.2*/
select nombre,precio from articulos;

/*Ex 1.3*/
select nombre from articulos where precio <= 200;

/*Ex 1.4*/
select * from articulos where precio between 60 and 120;

/*Ex 1.5*/
select nombre,precio*166.386 as 'Precio en pesetas' from articulos;

/*Ex 1.6*/
select avg(precio) as 'Precio Medio' from articulos;

/*Ex 1.7*/
select avg(precio) as 'Precio Medio' from articulos where fabricante = 2;

/*Ex 1.8*/
select count(*) as 'Numero articles' from articulos where precio >= 180; 

/*Ex 1.9*/
select nombre, precio from articulos where precio >= 180 order by nombre, precio desc;

/*Ex 1.10*/
select * from articulos inner join fabricantes on articulos.fabricante=fabricantes.codigo;
 
 /*Ex 1.11*/
select articulos.nombre, articulos.precio, fabricantes.nombre from articulos inner join fabricantes on articulos.fabricante=fabricantes.codigo;

/*Ex 1.12*/
select avg(articulos.precio), fabricantes.codigo 
from articulos inner join fabricantes 
on articulos.fabricante=fabricantes.codigo 
group by fabricantes.codigo;

/*Ex 1.13*/
select avg(articulos.precio) as 'Precio Medio', fabricantes.nombre 
from articulos inner join fabricantes 
on articulos.fabricante=fabricantes.codigo 
group by fabricantes.nombre;

/*Ex 1.14*/
select avg(articulos.precio) as 'Precio Medio', fabricantes.nombre from articulos inner join fabricantes on articulos.fabricante=fabricantes.codigo group by fabricantes.nombre having avg(articulos.precio) >= 150;

/*Ex 1.15*/
select nombre, precio from articulos order by precio limit 1;
select nombre, precio from articulos where precio = (select min(precio) from articulos);

/*Ex 1.16*/
select articulos.nombre, articulos.precio, fabricantes.nombre 
from articulos inner join fabricantes 
on articulos.fabricante=fabricantes.codigo 
where articulos.precio = (select max(precio) from articulos where articulos.fabricante=fabricantes.codigo);

#select articulos.nombre, articulos.precio, fabricantes.nombre from articulos inner join fabricantes on articulos.fabricante=fabricantes.codigo group by fabricantes.nombre order by articulos.precio;

#select f.nombre AS Proveedor, a.nombre AS Artículo, MAX(a.precio) AS Precio FROM articulos AS a INNER JOIN fabricantes AS f ON a.fabricante = f.codigo;

#select MAX(a.precio), f.nombre from articulos as a inner join fabricantes as f group by f.nombre;

/*Ex 1.17*/
insert into articulos values (11,'Altavoces', 70,2);

/*Ex 1.18*/
update articulos set nombre='Impresora Laser' where codigo=8;

/*Ex 1.19*/
update articulos set precio=precio*0.9;

/*Ex 1.20*/
update articulos set precio = precio -10 where precio >= 120;



