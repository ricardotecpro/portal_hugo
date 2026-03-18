---
title: "Slides: Modelagem ER"
weight: 10
marp: true
theme: gaia
_class:
  - lead
  - invert
header: "Banco de Dados"
footer: "Professor Ricardo"
---

# Modelagem de Dados

- Abstração de Dados
- Entidades e Atributos
- Relacionamentos (1:1, 1:N, N:N)

---

# Comandos SQL (DDL)

- `CREATE TABLE`
- `ALTER TABLE`
- `DROP TABLE`

```sql
CREATE TABLE Professor (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);
```
