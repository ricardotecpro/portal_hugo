# Portal de Cursos Computação (Hugo + Relearn + Marp)

Este projeto é um portal de cursos escalável construído com o gerador de sites estáticos [Hugo](https://gohugo.io/), utilizando o tema [Relearn](https://mcshelby.github.io/hugo-theme-relearn/) para documentação, [Mermaid.js](https://mermaid.js.org/) para diagramas e [Marp](https://marp.app/) para apresentações de slides.

## 🚀 Como Iniciar (Windows)

O projeto inclui um script de automação para facilitar a configuração do ambiente.

1.  Abra o **PowerShell** como Administrador na raiz do projeto.
2.  Execute o script de configuração:
    ```powershell
    ./setup.ps1
    ```
    *Este script irá:*
    - Instalar Hugo Extended, Node.js e Marp-CLI via Chocolatey.
    - Gerar os PDFs dos slides em `static/pdfs/`.
    - Iniciar o servidor local do Hugo (`http://localhost:1313/`).

## 📁 Estrutura do Projeto

- `content/cursos/`: Contém as disciplinas organizadas por pastas (Leaf Bundles).
  - `engenharia-software/`: Aula de Requisitos e slides integrados.
  - `banco-de-dados/`: Aula de Modelagem ER e slides integrados.
- `static/pdfs/`: Destino automático dos slides exportados em PDF.
- `themes/relearn/`: Tema base para a interface do portal.
- `hugo.toml`: Configuração central do site e variantes de cor.

## ✨ Funcionalidades Principais

- **Diagramas In-line**: Suporte nativo a Mermaid.js para diagramas de classe, ER, sequencia, etc.
- **Slides com Marp**: Crie apresentações profissionais usando apenas Markdown dentro das pastas de curso.
- **Modo Dark/Light**: Seletor de variantes de cor integrado na barra lateral.
- **Taxonomias**: Organização inteligente por `disciplina` e `tecnologia`.

## 🛠️ Tecnologias Utilizadas

- **Hugo Extended**: Gerador de site estático.
- **Relearn Theme**: Layout focado em documentação e cursos.
- **Marp-CLI**: Conversão de Markdown para apresentações PDF.
- **Chocolatey**: Gerenciador de pacotes para Windows (instalação automatizada).

## 📝 Adicionando Novo Conteúdo

Para adicionar uma nova disciplina:
1. Crie uma nova pasta em `content/cursos/minha-disciplina/`.
2. Adicione um arquivo `_index.md` para a página principal da disciplina.
3. Para slides, crie uma subpasta `slides/` com um arquivo `index.md` contendo o cabeçalho `marp: true`.

---

Para iniciar o portal, você tem duas opções principais dependendo se já possui as ferramentas instaladas ou não:

1. Usando o Script de Configuração (Recomendado)
Como o roteiro falhou por falta de permissões, você deve abrir o PowerShell como Administrador:

Clique com o botão direito no menu Iniciar e selecione Terminal (Administrador) ou PowerShell (Administrador).
Navegue até a pasta do projeto:
powershell
cd "d:\SourceCode\REPOS\github.io\#hugo\projeto_hugo"
Execute o script:
powershell
.\setup.ps1
2. Apenas Iniciar o Servidor (Se já tiver o Hugo)
Se você já instalou o Hugo anteriormente ou quer apenas rodar o servidor após a primeira configuração, use:

powershell
hugo server -D
3. Iniciar via Node.js (Sem instalar o Hugo globalmente)
Como detectamos que você tem o Node.js instalado, você pode rodar o servidor sem precisar de permissões de administrador para o Chocolatey:

powershell
npx -y hugo-bin server -D
Dica: Após iniciar, o site estará disponível em http://localhost:1313/. Basta abrir esse endereço no seu navegador.