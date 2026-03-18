# Setup script for Hugo Course Portal

Write-Host "Iniciando configuração do ambiente Hugo (Relearn + Marp)..." -ForegroundColor Cyan

# 1. Instalação de dependências via Chocolatey
if (Get-Command "choco" -ErrorAction SilentlyContinue) {
    Write-Host "Instalando Hugo Extended, Nodejs e Marp-CLI..."
    choco install hugo-extended nodejs -y
    npm install --global @marp-team/marp-cli
} else {
    Write-Warning "Chocolatey não detectado. Por favor, instale o Hugo Extended, Nodejs e Marp-CLI manualmente."
}

# 2. Criar diretório de saída para PDFs
if (!(Test-Path "static/pdfs")) {
    New-Item -ItemType Directory -Path "static/pdfs"
}

# 3. Build dos slides do Marp para PDF
Write-Host "Gerando PDFs das aulas (Marp)..." -ForegroundColor Green
marp content/cursos/engenharia-software/slides/index.md --pdf --output static/pdfs/eng-software.pdf
marp content/cursos/banco-de-dados/slides/index.md --pdf --output static/pdfs/banco-dados.pdf

# 4. Iniciar Hugo Server
Write-Host "Iniciando o Hugo Server localmente..." -ForegroundColor Magenta
hugo server -D
