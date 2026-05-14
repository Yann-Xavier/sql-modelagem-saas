-- Dados de exemplo para validar as consultas do modelo SaaS.

INSERT INTO plans (plan_id, plan_name, monthly_price) VALUES
    (1, 'Starter', 99.90),
    (2, 'Pro', 249.90),
    (3, 'Enterprise', 899.90);

INSERT INTO accounts (account_id, account_name, document_number, created_at) VALUES
    (1, 'Atlas Tecnologia', '00000000000101', '2024-01-01'),
    (2, 'Alpha Contabil', '00000000000102', '2024-01-05'),
    (3, 'Beta Servicos', '00000000000103', '2024-02-10');

INSERT INTO users (user_id, account_id, full_name, email, is_admin) VALUES
    (1, 1, 'Yann Xavier', 'yann@example.com', 1),
    (2, 1, 'Ana Silva', 'ana@example.com', 0),
    (3, 2, 'Bruno Lima', 'bruno@example.com', 1),
    (4, 3, 'Camila Rocha', 'camila@example.com', 1);

INSERT INTO subscriptions (subscription_id, account_id, plan_id, status, started_at, canceled_at) VALUES
    (1, 1, 2, 'active', '2024-01-01', NULL),
    (2, 2, 1, 'past_due', '2024-01-05', NULL),
    (3, 3, 3, 'active', '2024-02-10', NULL);

INSERT INTO invoices (invoice_id, subscription_id, due_date, amount, status) VALUES
    (1, 1, '2024-03-10', 249.90, 'paid'),
    (2, 2, '2024-03-10', 99.90, 'overdue'),
    (3, 3, '2024-03-10', 899.90, 'open');

INSERT INTO payments (payment_id, invoice_id, paid_at, amount, method) VALUES
    (1, 1, '2024-03-08', 249.90, 'credit_card');

