Algoritmo Propinas
	//Definir varriables//
	Definir cuenta, porcentajePropina, propina, total, pagoPorPersona Como Real
	Definir numPersonas Como Entero
	Escribir 'Ingrese el valor total de la cuenta:'
	Leer cuenta
	Escribir 'Ingrese el porcentaje de propina:'
	Leer porcentajePropina
	Escribir 'Ingrese el n�mero de personas:'
	Leer numPersonas
	
	//Calculo de propina con el porcentaje dado//
	propina <- (cuenta*porcentajePropina)/100
	total <- cuenta+propina
	pagoPorPersona <- total/numPersonas

	//Salida de resultados//
	Escribir 'Valor de la propina: $', propina
	Escribir 'Total a pagar (cuenta + propina): $', total
	Escribir 'A cada persona le toca pagar: $', pagoPorPersona
FinAlgoritmo
