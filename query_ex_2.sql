/*Ex 2.1*/
select apellidos from empleados;

/*Ex 2.2*/
select distinct apellidos from empleados ;

/*Ex 2.3*/
select * from empleados where apellidos = 'Smith';

/*Ex 2.4*/
select * from empleados where apellidos = 'Smith' or apellidos = 'Rogers';

/*Ex 2.5*/
select * from empleados where departamento = 14;

/*Ex 2.6*/
select * from empleados where departamento = 14 or departamento = 77;

/*Ex 2.7*/
select * from empleados where apellidos like 'P%';

/*Ex 2.8*/
select SUM(presupuesto) as 'Presupuesto Total' from departamentos;

/*Ex 2.9*/
select count(empleados.dni), departamentos.NOMBRE as 'Numero Empleados' 
from empleados inner join departamentos 
on departamentos.CODIGO=empleados.DEPARTAMENTO 
group by departamentos.NOMBRE;

/*Ex 2.10*/
select *
from empleados inner join departamentos 
on departamentos.CODIGO=empleados.DEPARTAMENTO;

/*Ex 2.11*/
select e.NOMBRE, e.APELLIDOS, d.NOMBRE, d.PRESUPUESTO
from empleados as e inner join departamentos as d 
on d.CODIGO=e.DEPARTAMENTO;

/*Ex 2.12*/
select e.NOMBRE, e.APELLIDOS, d.NOMBRE, d.PRESUPUESTO
from empleados as e inner join departamentos as d 
on d.CODIGO=e.DEPARTAMENTO
where d.PRESUPUESTO > 60000;

/*Ex 2.13*/
select e.NOMBRE, e.APELLIDOS, d.PRESUPUESTO
from (empleados as e inner join departamentos as d 
on d.CODIGO=e.DEPARTAMENTO)
having (d.PRESUPUESTO) > (select avg(departamentos.PRESUPUESTO) from departamentos );

/*Ex 2.14*/
select distinct d.NOMBRE
from empleados as e inner join departamentos as d 
on d.CODIGO=e.DEPARTAMENTO
group by e.DEPARTAMENTO
having count(e.DNI) > 2;

/*Ex 2.15*/
insert into departamentos values (11,'Calidad',40000);
insert into empleados values ('89267109', 'Esther', 'Vázquez', 11);

/*Ex 2.16*/
update departamentos set presupuesto = presupuesto * 0.9;

/*Ex 2.17*/
update empleados set departamento = 14 where departamento = 77;

/*Ex 2.18*/
delete from empleados where departamento = 14;

/*Ex 2.19*/
delete actividades.empleados 
from empleados inner join departamentos 
on departamentos.CODIGO=empleados.DEPARTAMENTO 
where departamentos.PRESUPUESTO > 60000;

/*Ex 2.20*/
truncate empleados;
