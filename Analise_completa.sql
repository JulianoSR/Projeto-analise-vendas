--======================================================
--ANÁLISE COMPLETA DO PORTFÓLIO
-- Objetivo: Trazer uma análise completa sobre vendas
--======================================================

--=================================================================================
-- ANÁLISE 1: ANÁLISE DE VENDAS
-- Objetivo: Identificar a quantidade vendida de cada item e seu respectivo valor
--=================================================================================

use analise_vendas;

select 
	produto,
	count(*) as quantidade,
	sum(Valor) as valor_total
from vendas
group by Produto
order by valor_total desc;


--=================================================================
-- ANÁLISE 2: ANÁLISE DE VENDAS POR MÊS
-- Objetivo: Identificar a quantidade e o valor vendidos por mês
--=================================================================

use analise_vendas

select 
	month(Data) as Mês,
	Count(ID_Vendas) as quantidade_vendida,
	sum(valor) as total_vendido
from vendas
group by month(Data)
order by Mês;


--===================================================
-- ANÁLISE 3: DESEMPENHO DOS VENDEDORES
-- Objetivo : analisar o desempenho dos vendedores
--===================================================

use analise_vendas;

select 
	vendedor,
	count(*) as quantidade_vendas,
	sum(valor) as faturamento_total
from vendas
group by vendedor
order by faturamento_total;


--==================================================
-- ANÁLISE 4: VENDAS POR ESTADO
-- Objetivo : Analisar vendas feitas por Estados
--==================================================

use analise_vendas;

select
	Estado,
	count(ID_Vendas) as quantidade_vendas,
	sum(valor) as total_vendido,
	avg(Valor) as ticket_medio
from vendas
group by Estado
Order by total_vendido desc;
	