/*Ex 4.1*/
select * from peliculas;

/*Ex 4.2*/
select CALIFICACIONEDAD from peliculas;

/*Ex 4.3*/
select * from peliculas where CALIFICACIONEDAD IS NOT NULL;

/*Ex 4.4*/
select * from salas where PELICULA IS Null;

/*Ex 4.5*/
SELECT s.codigo, s.nombre, s.pelicula, p.codigo, p.nombre, p.calificacionedad 
FROM salas AS s
left JOIN peliculas AS p
ON s.pelicula = p.codigo;

/*Ex 4.6*/
SELECT s.codigo, s.nombre, s.pelicula, p.codigo, p.nombre, p.calificacionedad 
from salas as s
right join peliculas as p
on s.PELICULA = p.CODIGO;

/*Ex 4.7*/
select peliculas.nombre from salas
right join peliculas 
on salas.PELICULA = peliculas.CODIGO
where salas.PELICULA IS Null;

/*Ex 4.8*/
insert into peliculas values(10,'Uno, Dos, Tres',7);

/*Ex 4.9*/
update peliculas set CALIFICACIONEDAD = 'No recomendable para menores de 13 años' where CALIFICACIONEDAD is null;

/*Ex 4.10*/
delete actividad.sala from salas
right join peliculas 
on salas.PELICULA = peliculas.CODIGO
where peliculas.CALIFICACIONEDAD IS Null; 




