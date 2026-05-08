
SELECT * FROM venda;

SELECT * FROM venda
where year(DataVenda)=2025 and TipoRecibo='FT' and StatusVenda='N' and StatusPgto='Não Paga' and NrFatura='FT AVM25/94';


update venda set StatusPgto='Não Paga'
where year(DataVenda)=2025 and TipoRecibo='FT' and StatusVenda='N' and StatusPgto='Paga';
