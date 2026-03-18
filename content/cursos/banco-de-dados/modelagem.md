---
title: "Modelagem ER"
date: 2026-03-18
disciplina: ["Banco de Dados"]
tecnologia: ["SQL", "ERD"]
---

# Modelagem Entidade-Relacionamento

A modelagem ER é a base para a criação de bancos de dados relacionais robustos.

## Diagrama ER (Mermaid)

```mermaid
erDiagram
    ALUNO ||--o{ MATRICULA : realiza
    DISCIPLINA ||--o{ MATRICULA : possui
    ALUNO {
        string nome
        string ra
    }
    DISCIPLINA {
        string codigo
        string nome
    }
```

## Exemplo de SQL (DDL)

```sql
CREATE TABLE Aluno (
    ra VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Disciplina (
    codigo VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);
```
