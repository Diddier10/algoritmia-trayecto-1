Algoritmo ValidarAnioBisiesto
	// Declaración de variables
	Definir anio Como Entero;
	
	// Entrada de datos
	Escribir "Ingrese el año a evaluar:";
	Leer anio;
	
	// Proceso y salida (regla de año bisiesto)
	Si (anio MOD 4 = 0 Y anio MOD 100 <> 0) O (anio MOD 400 = 0) Entonces
		Escribir "El año ", anio, " ES bisiesto.";
	SiNo
		Escribir "El año ", anio, " NO es bisiesto.";
	FinSi
FinAlgoritmo
