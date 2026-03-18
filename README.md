# Portal de Cursos Computação (Hugo + Relearn + Marp)

Este projeto é um portal de cursos escalável construído com o gerador de sites estáticos [Hugo](https://gohugo.io/), utilizando o tema [Relearn](https://mcshelby.github.io/hugo-theme-relearn/) para documentação, [Mermaid.js](https://mermaid.js.org/) para diagramas e [Marp](https://marp.app/) para apresentações de slides.

## 🚀 Como iniciar no Windows

O projeto inclui um script de automação para facilitar a configuração do ambiente.

1. Abra o **PowerShell** como **Administrador** na raiz do projeto.
2. Execute o script de configuração:

```powershell
./setup.ps1
```

Este script irá:

- Instalar Hugo Extended, Node.js e Marp-CLI via Chocolatey.
- Gerar os PDFs dos slides em `static/pdfs/`.
- Iniciar o servidor local do Hugo em `http://localhost:1313/`.

## 📁 Estrutura do projeto

- `content/cursos/`: contém as disciplinas organizadas por pastas (Leaf Bundles).
  - `engenharia-software/`: aula de Requisitos e slides integrados.
  - `banco-de-dados/`: aula de Modelagem ER e slides integrados.
- `static/pdfs/`: destino automático dos slides exportados em PDF.
- `themes/relearn/`: tema base para a interface do portal.
- `hugo.toml`: configuração central do site e variantes de cor.

## ✨ Funcionalidades principais

- **Diagramas in-line**: suporte nativo a Mermaid.js para diagramas de classe, ER, sequência e outros.
- **Slides com Marp**: criação de apresentações em Markdown dentro das pastas de curso.
- **Modo Dark/Light**: seletor de variantes de cor integrado na barra lateral.
- **Taxonomias**: organização por `disciplina` e `tecnologia`.

## 🛠️ Tecnologias utilizadas

- **Hugo Extended**: gerador de site estático.
- **Relearn Theme**: layout focado em documentação e cursos.
- **Marp-CLI**: conversão de Markdown para apresentações em PDF.
- **Chocolatey**: gerenciador de pacotes para Windows.

## 📝 Adicionando novo conteúdo

Para adicionar uma nova disciplina:

1. Crie uma nova pasta em `content/cursos/minha-disciplina/`.
2. Adicione um arquivo `_index.md` para a página principal da disciplina.
3. Para slides, crie uma subpasta `slides/` com um arquivo `index.md` contendo o cabeçalho `marp: true`.

---

## ▶️ Formas de iniciar o portal

Há três opções principais para iniciar o portal, dependendo do ambiente já configurado.

### 1. Usando o script de configuração (recomendado)

Se houver falha por falta de permissões, abra o PowerShell como **Administrador**:

1. Clique com o botão direito no menu Iniciar e selecione **Terminal (Administrador)** ou **PowerShell (Administrador)**.
2. Navegue até a pasta do projeto:

```powershell
cd "d:\SourceCode\REPOS\github.io\#hugo\projeto_hugo"
```

3. Execute o script:

```powershell
.\setup.ps1
```

### 2. Apenas iniciar o servidor (se o Hugo já estiver instalado)

Se o Hugo já estiver instalado, execute:

```powershell
hugo server -D
```

### 3. Iniciar via Node.js (sem instalar o Hugo globalmente)

Se o Node.js já estiver instalado, é possível iniciar o servidor sem permissões administrativas:

```powershell
npx -y hugo-bin server -D
```

> **Dica:** após iniciar, o site estará disponível em [http://localhost:1313/](http://localhost:1313/).
