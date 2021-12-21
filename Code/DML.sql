delete from public.review_id_table;

delete from public.products;

delete from public.customers;

delete from public.vine_table;

select count(*) from public.review_id_table;

select count(*) from public.products;

select count(*) from public.customers;

select sum(customer_count) from public.customers;

select count(*) from public.vine_table;