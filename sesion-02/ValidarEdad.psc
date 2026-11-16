Algoritmo ValidarEdad
	// Declaración de variables
	Definir edad Como Entero;
	
	// Entrada de datos
	Escribir "Ingrese la edad:";
	Leer edad;
	
	// Proceso y salida (validación de rango)
	Si edad >= 0 Y edad <= 120 Entonces
		Escribir "La edad ingresada (", edad, " años) es VÁLIDA.";
	SiNo
		Escribir "La edad ingresada (", edad, " años) NO es válida. Debe estar entre 0 y 120.";
	FinSi
FinAlgoritmo