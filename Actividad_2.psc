Algoritmo Actividad_2
	
	
	Definir x,n,decimal,menu Como Entero
	Definir binario Como Caracter
	Definir hexa, octal, nombre Como Carácter
	
	
	Escribir "--------- MENU DE OPCIONES ---------"
	Escribir "--Por favor ingresa tu nombre--"
	Leer nombre
	Escribir ""
	Escribir "      Benvenido ", nombre
	Escribir "---Elija la opcion que desee---"
	Escribir ""
	Escribir "Digita 1 para la conversion de binario a decimal"
	Escribir "Digita 2 para la conversion de decimal a hexadecimal"
	Escribir "Digita 3 para la conversion de decimal a octal"
	Escribir ""
	Leer menu
	
	Limpiar Pantalla
	
	Si menu == 1 Entonces
		Escribir "Ingresa un numero binario"
		leer n 
		binario = ConvertirATexto(n)
		n= Longitud(binario)
		x=0
		decimal=0
		Mientras n>0 Hacer
			si Subcadena(binario,n,n) == "1" Entonces
				decimal = decimal+2^x 
			FinSi
			n=n-1
			x=x+1
		FinMientras
		Escribir "El numero en decimal es :",decimal
	SiNo
		Si menu==2 Entonces
			Escribir "Ingresa un número"
			leer n
			x=1
			hexa = ""
			Mientras x > 0 Hacer
				x = trunc(n/16)
				Segun n mod 16 hacer
					10:
						hexa = "A"+hexa
					11:
						hexa = "B"+hexa
					12:
						hexa = "C"+hexa
					13:
						hexa = "D"+hexa
					14:
						hexa = "E"+hexa
					15:
						hexa = "F"+hexa
					De Otro Modo:
						hexa = ConvertirATexto(n mod 16)+hexa
				FinSegun
				n = x
			FinMientras
			Escribir "El numero en hexadecimal es ",hexa
		SiNo
			Si menu == 3 Entonces
				Escribir "Ingrese un numero"
				Leer n
				x=1
				octal=""
				Mientras x > 0 Hacer
					x = trunc(n/8)
					octal = ConvertirATexto(n mod 8) + octal
					n = x
				FinMientras
			Escribir "La conversión a octal es: ",octal
			SiNo
				Limpiar Pantalla
				Escribir nombre," La opcion seleccionada es incorrecta"
			Fin Si
		Fin Si
	Fin Si
FinAlgoritmo
