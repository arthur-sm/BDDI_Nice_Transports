select * from pg_tables where tablename not like 'pg%'

select e.cidade, avg(d.datahora - c.datahora) from chega c
join deixa d on d.fk_cliente_id = c.fk_cliente_id
join ponto_de_onibus p on p.id = c.fk_ponto_de_onibus_id
join endereco e on e.id = p.fk_endereco_id
group by e.cidade

select l.nome, count(r.*) from linha l
join alocado a on a.fk_linha_id = l.id
join recebe r on r.fk_onibus_id = a.fk_onibus_id
group by l.nome
order by count(r.*) desc
fetch first 5 rows only


--9.1

select 'select * from ' || schemaname || '.' || tablename from pg_tables where tablename not like 'pg%'

select * from public.onibus
select * from public.linha
select * from public.percorre
select * from public.alocado
select * from public.endereco
select * from public.ponto_de_onibus
select * from public.passa
select * from public.entrega
select * from public.cliente
select * from public.recebe
select * from public.chega
select * from public.deixa