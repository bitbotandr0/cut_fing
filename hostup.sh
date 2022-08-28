#!/bin/bash

# este script verifica cuantos equipos están activos
sleep 0.5
# en la red local para las siguientes direcciones ip.
sleep 0.5
# 192.168.100.1 / 192.168.200.1 / 192.168.0.1
echo "host-up es un programa que  verifica cuantos "
sleep 0.5
echo "equipos están conectados en su red"
sleep 0.5
echo "funciona para un determinado número de ip's"
sleep 1
echo "este programa utilza los recursos de nmap"
sleep 0.5
echo "si usted no tiene instalado nmap"
echo "puede instalarla con la opción (5)"
espeak -ves+m5 -s110 "hola y bienvenido "
espeak -ves+m5 -s110 " elija  su i pe "
sleep 1

opc=0

while [ $opc -ne 7 ]; do

clear

echo "✓)digite 1 si su ip es 192.168.200.1"
echo "✓)digite 2 si su ip es 192.168.100.1"
echo "✓)digite 3 si su ip es 192.168.1.1"
echo "✓)digite 4 si su ip es 192.168.0.1"
echo "✓)digite 5 para instalar nmap."
echo "✓)digite 6 para ver su mac address"
echo "✓)digite 7 para salir"
read -p "digite su opción :   " opc

case     $opc in

         1)clear
                echo "opción 1 ejecutándose...."
          nmap -sn 192.168.200.137/24 -oG -
                sleep 45

                ;;

         2)clear
                 echo "opción 2 ejecutándose..."
          nmap -sn 192.168.100.137/24 -oG -
                sleep 45

                ;;


         3)clear

                 echo "opción 3 ejecutándose..."
          nmap -sn 192.168.1.137/24 -oG -
                 sleep 45

                 ;;

         4)clear
                 echo "opción 4 ejecutándose...."
          nmap -sn 192.168.0.137/24 -oG -
                 sleep 45

                 ;;
         5)clear
                 echo " opción 5 ejecutándose..."
                 apt install nmap || sudo apt install nmap

                 sleep 1

                 ;;


         6)clear
                 echo "opción 6 ejecutándose............"
                 sleep 1.5
                 ip addr | grep -C1 "link/ether"  
                 sleep 8

                ;;

         7)clear

                 echo "saliendo..........."

                ;;

         *)clear
                 echo "$opc no es una opción válida"
                 sleep 2

               ;;


esac





done
