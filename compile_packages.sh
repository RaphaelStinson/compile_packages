#!/bin/bash

# Habilitar o suporte a cores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # Sem cor

# Função para exibir a tela de "Iniciando..."
start_screen() {
    echo -e "${BLUE}======================================${NC}"
    echo -e "${YELLOW}       Iniciando a Compilação       ${NC}"
    echo -e "${BLUE}======================================${NC}"
    sleep 1
}

# Função para simular o painel de progresso em %
progress_bar() {
    echo -ne "${GREEN}Progresso: ${NC}"
    for i in {1..100}; do
        echo -ne "${YELLOW}#${NC}"
        sleep 0.03
    done
    echo -e " ${GREEN}100% Concluído!${NC}"
}

# Exibir a tela de "Iniciando..."
start_screen

# Exibir o painel de progresso
progress_bar

# Executar o comando de compilação com privilégios de root
echo -e "\n${RED}Executando o comando como superusuário...${NC}"
su -c "cmd package compile -m speed-profile -f -a"

echo -e "${GREEN}Compilação concluída com sucesso!${NC}"
