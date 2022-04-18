create database pizzaria;

select * from pedidos;
alter table pedidos drop column numero;
alter table pedidos drop column cliente;
alter table pedidos drop column endereco;
alter table pedidos drop column telefone;
alter table pedidos drop column valor_pizza;
alter table pedidos drop column valor_entrega;
alter table pedidos drop column hora_entrega;

select max(data_pedido), min(data_pedido) from pedidos;

delete from pedidos where year(data_pedido) >= 2015;

select dayname(data_pedido) from pedidos;

# mudando para o idioma portugues
select @@lc_time_names;
set lc_time_names = 'pt_BR';

delimiter $$
create function GetDiaSemana(data_pedido date) returns varchar (10)
begin
  return dayname(data_pedido);
end $$
delimiter ;