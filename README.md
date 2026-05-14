# SQL Modelagem SaaS

Projeto de modelagem de banco de dados para um produto SaaS com clientes,
usuarios, planos, assinaturas, faturas e pagamentos.

## Objetivo

Demonstrar capacidade de estruturar um dominio SaaS:

- clientes e usuarios;
- planos comerciais;
- assinaturas ativas ou canceladas;
- faturamento;
- pagamentos;
- consultas para MRR e inadimplencia.

## Como executar com SQLite

```bash
sqlite3 saas.db < schema.sql
sqlite3 saas.db < seed.sql
sqlite3 saas.db < queries.sql
```

