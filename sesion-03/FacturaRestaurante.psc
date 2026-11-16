// 1. Función sin parámetros que devuelve el subtotal
Funcion resultado <- LeerPedido
	Definir resultado Como Real;
	Escribir "Ingrese el valor del consumo (subtotal):";
	Leer resultado;
FinFuncion

// 2. Función con parámetros reutilizable para impuesto y propina
Funcion monto <- CalcularPorcentaje(valor, porcentaje)
	Definir monto Como Real;
	monto <- (valor * porcentaje) / 100;
FinFuncion

// 3. Subproceso que no devuelve valor, solo imprime el recibo
SubProceso ImprimirFactura(sub, imp, prop)
	Definir total Como Real;
	total <- sub + imp + prop;
	
	Escribir "========================================";
	Escribir "          FACTURA RESTAURANTE           ";
	Escribir "========================================";
	Escribir "Subtotal:       $", sub;
	Escribir "Impuesto (8%):  $", imp;
	Escribir "Propina (10%):  $", prop;
	Escribir "----------------------------------------";
	Escribir "TOTAL A PAGAR:  $", total;
	Escribir "========================================";
FinSubProceso

// ALGORITMO PRINCIPAL
Algoritmo FacturaRestaurante
	Definir subtotal, impuesto, propina Como Real;
	
	subtotal <- LeerPedido();
	impuesto <- CalcularPorcentaje(subtotal, 8);
	propina <- CalcularPorcentaje(subtotal, 10);
	ImprimirFactura(subtotal, impuesto, propina); 
FinAlgoritmo

