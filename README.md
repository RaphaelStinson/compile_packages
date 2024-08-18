# compile_packages

instale o termux 

https://f-droid.org/repo/com.termux_1020.apk

Este script executa um comando que compila todos os pacotes do Android com otimização de velocidade.

Execute o comando de compilação de pacotes com otimização de perfil de velocidade como superusuário.

# Use os comandos abaixo para funcionar corretamente

mv compile_packages.sh ~/

cd

se não estiver fora do home use os comando abaixo

no Android 14 use os comandos

pkg install termux-am

depois

termux-setup-storage

pkg install git

git clone https://github.com/RaphaelStinson/compile_packages

su

exit

cd compile_packages

chmod +x compile_packages.sh

./compile_packages.sh
