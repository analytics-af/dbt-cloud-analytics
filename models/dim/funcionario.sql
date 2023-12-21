WITH STAGING_VENDAS AS(
SELECT DISTINCT Employee as funcionario, EmployeeID as id_funcionario FROM `dbt-parari-parara.cbt.venda` )

SELECT * FROM STAGING_VENDAS