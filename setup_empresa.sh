#!/bin/bash
#criação do diretorio público 
mkdir /publico
#criação dos diretórios dos grupos
mkdir /publico/adm\ /publico/ven\ /publico/sec
#criação dos grupos
groupadd GRP_ADM GRP_VEN GRP_SEC
#mudança do dono dos diretórios para root e respectivos grupos
chown root /publico/adm
chown :GRP_ADM /publico/adm
chown root /publico/ven
chown :GRP_VEN /publico/ven
chown root /publico/sec
chown :GRP_SEC /publico/sec
#mudança das permissões dos grupos
chmod 777 /publico
chmod 770 /publico/adm
chmod 770 /publico/ven
chmod 770 /publico/sec
#criação dos usuários
useradd carlos -c "Carlos" -m -p Senha123 -G GRP_ADM
useradd maria -c "Maria" -m -p Senha123 -G GRP_ADM
useradd joao -c "João" -m -p Senha123 -G GRP_ADM
useradd debora -c "Debora" -m -p Senha123 -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -p Senha123 -G GRP_VEN
useradd roberto -c "Roberto" -m -p Senha123 -G GRP_VEN
useradd josefina -c "Josefina" -m -p Senha123 -G GRP_SEC
useradd amanda -c "Amanda" -m -p Senha123 -G GRP_SEC
useradd rogerio -c "Rogério" -m -p Senha123 -G GRP_SEC
#forçar usuários a trocar de senha no primeiro login
chage -d 0 carlos
chage -d 0 maria
chage -d 0 joao
chage -d 0 debora
chage -d 0 sebastiana
chage -d 0 roberto
chage -d 0 josefina
chage -d 0 amanda
chage -d 0 rogerio
#fim
