#!/bin/bash

echo "Criando os Diretorios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os Grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios para o grupo GRP_ADM..."
useradd carlos -c"Novo Usuario"  -m -s /bin/bash -p$(openssl passwd -6 senha123) -G GRP_ADM
useradd maria -c"Novo usuario" -m -s /bin/bash -p$(openssl passwd -6 senha123) -G GRP_ADM
useradd joao -c"Novo usuario" -m -s /bin/bash -p$(openssl passwd -6 senha123) -G GRP_ADM

echo "Criando os usuarios para o grupo GRP_VEN..."
useradd  debora -c"Novo usuario" -m -s /bin/bash -p$(openssl passwd -6 senha123) -G GRP_VEN
useradd sebastiana -c"Novo usuario" -m -s /bin/bash -p$(openssl passwd -6 senha123) -G  GRP_VEN
useradd roberto -c"Novo usuario" -m -s/bin/bash -p$(openssl passwd -6 senha123) -G GRP_VEN

echo "Criando os usuarios para o grupo GRP-SEC..."
useradd josefina -c"Novo usuario" -m -s /bin/bash -p$(openssl passwd -6 senha123) -G GRP_SEC
useradd amanda -c"Novo usuario" -m -s /bin/bash -p$(openssl passwd -6 senha123) -G GRP_SEC
useradd rogerio -c"Novo usuario" -m -s /bin/bash -p$(openssl passwd -6 senha123) -G GRP_SEC

echo "Ajustando os diretorios para o dono e grupos..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Ajustando permissoes de acesso aos diretorios..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Script Finalizado..."
