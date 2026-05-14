-- MRR considerando apenas assinaturas ativas.
SELECT
    ROUND(SUM(p.monthly_price), 2) AS active_mrr
FROM subscriptions AS s
INNER JOIN plans AS p
    ON p.plan_id = s.plan_id
WHERE s.status = 'active';

-- Clientes inadimplentes com faturas vencidas.
SELECT
    a.account_name,
    p.plan_name,
    i.due_date,
    i.amount,
    i.status
FROM invoices AS i
INNER JOIN subscriptions AS s
    ON s.subscription_id = i.subscription_id
INNER JOIN accounts AS a
    ON a.account_id = s.account_id
INNER JOIN plans AS p
    ON p.plan_id = s.plan_id
WHERE i.status = 'overdue'
ORDER BY
    i.due_date;

-- Quantidade de usuarios por cliente.
SELECT
    a.account_name,
    COUNT(u.user_id) AS total_users
FROM accounts AS a
LEFT JOIN users AS u
    ON u.account_id = a.account_id
GROUP BY
    a.account_id,
    a.account_name
ORDER BY
    total_users DESC;

-- Receita recebida por metodo de pagamento.
SELECT
    method,
    ROUND(SUM(amount), 2) AS total_paid
FROM payments
GROUP BY
    method
ORDER BY
    total_paid DESC;

