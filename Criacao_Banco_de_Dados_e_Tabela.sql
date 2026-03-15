--=========================================
-- Criação do Banco de Dados e da Tabela
--=========================================

create database analise_vendas;

create table vendas (
ID_Vendas int not null,
Vendedor varchar (100) not null,
Produto varchar (100) not null,
Valor Decimal (10,2) not null,
Data Date not null,
Categoria varchar (100) not null,
Estado Varchar (100) not null
primary key (ID_Vendas)
);
