#!/bin/bash
continuar=C
while [ $continuar = C ]: 
echo "Presione 1 para crear un grupo \n 2 para agregar un usuario \n 3 crear un  usuario a un grupo"
read var1
do
{
if [ $var1 = 1 ]:
	then
	echo "escriba el nombre del grupo"
	read var2
	sudo groupadd $var2	
	echo "C para continuar, S para salir"
	read text
	continuar=text
fi
if [ $var1 = 2 ]:
	then
	echo "escriba el nombre del usuario"
	read var3
	sudo useradd $var3 -d /home/$var3 -m
	echo "t para continuar, f para salir"
	read text
	continuar=text
fi
if [ $var1 = 3 ]:
	then
	echo "escriba el nombre de un usuario"
	read var4
	echo "escriba el nombre del grupo"
	read var5
	sudo useradd $var4 $var5
	mkdir /home/daniel/$var5
	#sudo mv /home/$var4 /home/daniel/$var5
	echo "t para continuar, f para salir"
	read text
	continuar=text
fi
}
done
