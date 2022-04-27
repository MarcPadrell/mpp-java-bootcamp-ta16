use actividades;

/*Ex 3.1*/
select * from almacenes;

/*Ex 3.2*/
select * from cajas where valor > 150;

/*Ex 3.3*/
select distinct contenido from cajas;

/*Ex 3.4*/
select avg(valor) as 'Valor medio' from cajas;

/*Ex 3.5*/
select a.codigo, a.LUGAR, avg(valor) as 'Valor medio'
from cajas as c inner join almacenes as a
on c.almacen = a.CODIGO
group by a.CODIGO;

/*Ex 3.6*/
select a.codigo
from cajas as c inner join almacenes as a
on c.almacen = a.CODIGO
group by a.CODIGO
having 150 < avg(c.VALOR);

/*Ex 3.7*/
select c.NUMREFERENCIA, a.LUGAR
from cajas as c inner join almacenes as a
on c.almacen = a.CODIGO;

/*Ex 3.8*/
select a.LUGAR, count(c.CONTENIDO) as 'Num cajas'
from cajas as c inner join almacenes as a
on c.almacen = a.CODIGO
group by a.LUGAR;

/*Ex 3.9*/
select distinct a.codigo as 'Codigo almacen Saturado'
from cajas as c inner join almacenes as a
on c.almacen = a.CODIGO
where a.CAPACIDAD < (select count(c.CONTENIDO) from cajas as c where c.ALMACEN = a.CODIGO);

/*Ex 3.10*/
select c.NUMREFERENCIA
from cajas as c inner join almacenes as a
on c.almacen = a.CODIGO
where a.LUGAR = 'Bilbao';

/*Ex 3.11*/
insert into almacenes values (6,'Barcelona', 3);

/*Ex 3.12*/
insert into cajas values ('H5RT', 'Papel', 200, 2);

/*Ex 3.13*/
update cajas set valor = valor * 0.85;

/*Ex 3.14*/
update cajas set valor = valor * 0.80 where cajas.valor > (select avg(cajas.valor));

/*Ex 3.15*/
delete from actividades.cajas where cajas.valor < 100;

/*Ex 3.16*/
delete a.*
from almacenes as a
inner join cajas as c
ON a.codigo = c.almacen
where(select count(c.NUMREFERENCIA)) > a.capacidad;

