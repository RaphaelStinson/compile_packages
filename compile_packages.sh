#!/bin/bash

# Este script executa um comando que compila todos os pacotes do Android com otimização de velocidade.

# Execute o comando de compilação de pacotes com otimização de perfil de velocidade como superusuário
su -c "cmd package compile -m speed-profile -f -a"
