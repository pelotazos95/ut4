#!/bin/bash

	pid_script=$$
	intentos=10

	while [[ $intentos -gt 0 ]]; do
		clear
		read -p "Indica un PID: " num
		((intentos--))
		
		if [[ $num -eq $pid_script ]]; then
			echo "Has utilizado $intentos intentos"
			read -n1 -p "Has acertado"
			break
		elif [[ $num -lt $pid_script ]]; then
			echo "Has utilizado $intentos intentos"
			read -n1 -p "Has fallado, el PID es menor que $num"
		elif [[ $num -gt $pid_script ]]; then
			echo "Has utilizado $intentos intentos"
			read -n1 -p "Has fallado, el PID es mayor que $num"
		fi
	done
	clear
	echo "Has perdido todos los intentos"
	read -p "Pulsa para salir del programa..."
