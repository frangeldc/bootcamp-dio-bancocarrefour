#!/bin/bash


echo "Adding directories"

mkdir /publico /adm /ven /sec

echo "Directories created"
echo "Adding groups"

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Groups created"
echo "Adding Users"

useradd -c "Carlos" -m -s /bin/bash -p $(openssl passwd -5 123) carlos
useradd -c "Maria" -m -s /bin/bash -p $(openssl passwd -5 123) maria
useradd -c "Joao" -m -s /bin/bash -p $(openssl passwd -5 123) joao
useradd -c "Debora" -m -s /bin/bash -p $(openssl passwd -5 123) debora
useradd -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -5 123) sebastiana
useradd -c "Roberto" -m -s /bin/bash -p $(openssl passwd -5 123) roberto
useradd -c "Josefina" -m -s /bin/bash -p $(openssl passwd -5 123) josefina
useradd -c "Amanda" -m -s /bin/bash -p $(openssl passwd -5 123) amanda
useradd -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -5 123) rogerio

echo "Users added"
echo "Adding users to group GRP_ADM"

usermod carlos -G GRP_ADM
usermod maria -G GRP_ADM
usermod joao -G GRP_ADM

echo "users added to group GRP_ADM"
echo "Adding users to group GRP_VEN"

usermod debora -G GRP_VEN
usermod sebastiana -G GRP_VEN
usermod roberto -G GRP_VEN

echo "users added to group GRP_VEN"
echo "Adding users to group GRP_SEC"

usermod josefina -G GRP_SEC
usermod amanda -G GRP_SEC
usermod rogerio -G GRP_SEC

echo "users added to group GRP_SEC"
echo "publico directory to 777 permission"

chmod 777 /publico

echo "publico now 777 permission"

echo "Changing /adm to GRP_ADM and adding correct permissions"

chown root:GRP_ADM /adm
chmod 770 /adm

echo "Changing /adm to GRP_VEN and adding correct permissions"

chown root:GRP_VEN /ven
chmod 770 /ven

echo "Changing /adm to GRP_SEC and adding correct permissions"

chown root:GRP_SEC /sec
chmod 770 /sec










