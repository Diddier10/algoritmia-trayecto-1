
Algoritmo Piramide
	// 1. DECLARACIÓN DE VARIABLES
	// n: almacena la altura total de la pirámide (cantidad de filas).
	// fila: contador para recorrer la pirámide de arriba hacia abajo.
	// j: contador auxiliar para imprimir espacios y asteriscos en cada fila.
	Definir n, fila, j Como Entero
	
	Escribir "Altura de la piramide:"
	Leer n // Guarda el número ingresado por el usuario 
	
	// 3. PROCESO Y SALIDA DE DATOS
	// Ciclo principal: controla cada nivel o piso de la pirámide (desde 1 hasta n)
	Para fila <- 1 Hasta n Hacer
		
		// Primer subciclo: imprime los espacios en blanco a la izquierda
		// para centrar la pirámide. A medida que baja la fila, hay menos espacios.
		Para j <- 1 Hasta n - fila Con Paso 1 Hacer
			Escribir Sin Saltar " "
		FinPara
		
		// Segundo subciclo: imprime los asteriscos de cada piso siguiendo
		// la fórmula de números impares (1, 3, 5, 7...) -> (2 * fila - 1).
		Para j <- 1 Hasta 2 * fila - 1 Hacer
			Escribir Sin Saltar "*" // 'Sin Saltar' evita que cada * baje de línea
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
