---
title: "Slides: Engenharia de Requisitos"
weight: 10
marp: true
theme: default
class:
  - invert
paginate: true
header: "Engenharia de Software"
footer: "Professor Ricardo"
---

# Engenharia de Requisitos

- O que são requisitos?
- Levantamento de Requisitos
- Documentação e Especificação

---

# Padrão Singleton

- **Problema:** Como garantir que exista apenas uma instância de uma classe?
- **Solução:** O Singleton gerencia a própria instância e um acesso global.

```java
public class Singleton {
    private static Singleton instance;
    private Singleton() {}
}
```
