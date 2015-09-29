#!/bin/bash
continuar=C
while [ $continuar = C ]: 

echo "Presione \n  1 para crear un grupo \n 2 para agregar un usuario \n 3 crear un 
usuario a un grupo"

read var1
do
{
if [ $var1 = 1 ]:
	then
	echo "escriba el nombre del grupo"
	read var2
	sudo addgroup $var2
	echo "se a creado tu grupo"
	echo "C para continuar, S para salir"
	read text
	continuar=text
fi
if [ $var1 = 2 ]:
	then
	echo "escriba el nombre del usuario"
	read var3
	sudo use radd $var3 
	echo "se a creado el usuario"
	echo "C para continuar, S para salir"
	read text
	continuar=text
fi
if [ $var1 = 3 ]:
	then
	echo -n  "escriba el nombre de un usuario"
	read var4
	echo -n  "escriba el nombre del grupo"
	read var5
	sudo addgroup $var4 $var5
	#mkdir /home/edgar/$var5
	sudo mv /home/$var4 /home/edgar/$var5
	echo "C para continuar, S para salir"
	read text
	continuar=text
fi
}
done 
