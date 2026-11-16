Algoritmo Semaforo
	// Declaración de variables
	Definir unidades Como Entero;
	
	// Entrada de datos
	Escribir "Ingrese la cantidad de unidades en inventario:";
	Leer unidades;
	
	// Proceso y salida (condicionales anidados)
	Si unidades < 0 Entonces
		Escribir "Error: La cantidad de unidades no puede ser negativa.";
	SiNo
		Si unidades = 0 Entonces
			Escribir "Estado: ROJO - Agotado.";
		SiNo
			Si unidades <= 10 Entonces
				Escribir "Estado: AMARILLO - Pedir mercancía.";
			SiNo
				Escribir "Estado: VERDE - Todo bien.";
			FinSi
		FinSi
	FinSi
FinAlgoritmo
