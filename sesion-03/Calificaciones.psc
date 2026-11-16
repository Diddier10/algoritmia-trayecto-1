Algoritmo Calificaciones
	// Declaración de variables
	Definir i, aprobados Como Entero;
	Definir nota, suma, promedio, notaAlta, notaBaja Como Real;
	Definir alguienPerdio Como Logico;
	
	// Inicialización de acumuladores, contadores y banderas
	suma <- 0;
	aprobados <- 0;
	alguienPerdio <- Falso;
	
	// Un solo ciclo para leer y procesar las 5 notas en una sola pasada
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese la nota del estudiante ", i, ":";
		Leer nota;
		
		// Acumular para el promedio
		suma <- suma + nota;
		
		// Inicializar nota alta y baja con la primera nota ingresada
		Si i = 1 Entonces
			notaAlta <- nota;
			notaBaja <- nota;
		SiNo
			Si nota > notaAlta Entonces
				notaAlta <- nota;
			FinSi
			Si nota < notaBaja Entonces
				notaBaja <- nota;
			FinSi
		FinSi
		
		// Verificar si aprobó (3 o más) o si perdió (bandera)
		Si nota >= 3.0 Entonces
			aprobados <- aprobados + 1;
		SiNo
			alguienPerdio <- Verdadero;
		FinSi
	FinPara
	
	// Cálculo final del promedio
	promedio <- suma / 5;
	
	// Salida de resultados
	Escribir "Promedio del grupo: ", promedio;
	Escribir "Cantidad de estudiantes que aprobaron: ", aprobados;
	Escribir "Nota más alta: ", notaAlta;
	Escribir "Nota más baja: ", notaBaja;
	
	Si alguienPerdio Entonces
		Escribir "¿Alguien perdió la materia?: SÍ (al menos un estudiante sacó menos de 3.0).";
	SiNo
		Escribir "¿Alguien perdió la materia?: NO (todos aprobaron).";
	FinSi
FinAlgoritmo
