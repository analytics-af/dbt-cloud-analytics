WITH STG_VENDAS AS(
    SELECT DISTINCT CustomerID AS id_cliente,
    Customer AS cliente
    FROM `dbt-parari-parara.cbt.venda`
)
SELECT * FROM STG_VENDAS
