Algoritmo CobroParqueadero
	// Declaración de variables
	Definir tipoVehiculo, tieneFactura Como Caracter;
	Definir minutos, horasCobrar Como Entero;
	Definir tarifaHora, totalPagar Como Real;
	
	// Entrada de datos
	Escribir "Ingrese el tipo de vehículo (carro / moto):";
	Leer tipoVehiculo;
	tipoVehiculo <- Minusculas(tipoVehiculo);
	
	Escribir "Ingrese los minutos de permanencia:";
	Leer minutos;
	
	// Regla 4: Validación de tipo de vehículo y minutos negativos
	Si (tipoVehiculo <> "carro" Y tipoVehiculo <> "moto") O minutos < 0 Entonces
		Escribir "Error: Tipo de vehículo inválido o minutos negativos.";
	SiNo
		// Regla 2: Primeros 15 minutos gratis
		Si minutos <= 15 Entonces
			totalPagar <- 0;
			Escribir "Tiempo dentro de los 15 minutos de gracia. Total a pagar: $0";
		SiNo
			// Regla 1: Tarifa según vehículo
			Si tipoVehiculo = "carro" Entonces
				tarifaHora <- 4000;
			SiNo
				tarifaHora <- 2000;
			FinSi
			
			// Cálculo de horas o fracción (se cobra la hora completa desde el minuto 16)
			horasCobrar <- trunc((minutos - 1) / 60) + 1;
			totalPagar <- horasCobrar * tarifaHora;
			
			// Regla 3: Descuento del 50% con factura del centro comercial
			Escribir "¿Presenta factura del centro comercial? (si / no):";
			Leer tieneFactura;
			tieneFactura <- Minusculas(tieneFactura);
			
			Si tieneFactura = "si" Entonces
				totalPagar <- totalPagar / 2;
			FinSi
			
			Escribir "----------------------------------------";
			Escribir "Horas/fracciones cobradas: ", horasCobrar;
			Escribir "Total a pagar: $", totalPagar;
		FinSi
	FinSi
FinAlgoritmo
