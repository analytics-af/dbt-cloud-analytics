WITH STAGING_VENDAS AS(
SELECT Period as periodo,CustomerID as id_cliente,EmployeeID as id_funcionario FROM `dbt-parari-parara.cbt.venda`
),

DIM_FUNCIONARIO AS(
    SELECT * FROM {{ ref('funcionario') }}
),

DIM_CLIENTE AS(
    SELECT * FROM {{ ref('cliente') }}
)

SELECT S.periodo,D.id_funcionario,E.id_cliente FROM STAGING_VENDAS S
LEFT JOIN DIM_FUNCIONARIO D ON S.id_funcionario = D.id_funcionario
LEFT JOIN DIM_CLIENTE E ON S.id_cliente = E.id_cliente