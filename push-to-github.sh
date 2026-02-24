#!/bin/bash
# Script para fazer push do projeto Casa de Viagens para o GitHub
# Execute este script após configurar suas credenciais do GitHub

echo "🚀 Fazendo push do projeto Casa de Viagens para o GitHub..."
echo ""

# Configurar credenciais se necessário
# git config --global user.email "seu-email@gmail.com"
# git config --global user.name "Seu Nome"

# Entrar no diretório do projeto
cd /home/calefi/Projetos/casa-de-viagens

# Inicializar git se necessário
if [ ! -d ".git" ]; then
    git init
    git branch -m main
fi

# Configurar remote
git remote remove origin 2>/dev/null
git remote add origin https://github.com/ecalefi/casa-de-viagens-website.git

# Adicionar todos os arquivos
git add .

# Commit
git commit -m "feat: Add all 3 website versions

- Versão 1: Luxury Editorial (Navy/Gold)
- Versão 2: Tropical Paradise (Teal/Emerald)  
- Versão 3: Modern Corporate (Indigo/Pink)

Cada versão inclui:
- Hero section impactante
- Estatísticas (25+ anos, 500+ contas, 50K+ viagens)
- 6 serviços com cards interativos
- 6 destinos com imagens
- Formulário de contato completo
- 100% responsivo
- Animações CSS suaves"

# Push
echo ""
echo "📦 Fazendo push para o GitHub..."
git push -u origin main --force

echo ""
echo "✅ Push concluído!"
echo ""
echo "🌐 Acesse: https://github.com/ecalefi/casa-de-viagens-website"
echo "🚀 Vercel: https://casa-de-viagens-website.vercel.app"
