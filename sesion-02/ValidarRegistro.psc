Algoritmo  ValidarRegistro

	//Definicion de variables//
	Definir edad Como Entero
	Definir respuesta Como Caracter
	Escribir "�Cuantos a�os tienes"
	leer edad
	Escribir "�Aceptas los terminos (S/N)"
	leer respuesta

	//Funcion para convertir respuestas a mayusculas//
	respuesta <- Mayusculas(respuesta)
	
	//Validacion de edad, cuando solamente cumple ambas condiciones//
	Si edad >= 14 Y respuesta = "S" Entonces
		Escribir "Registro exitoso"
	SiNo
		Escribir "No puedes registrarte"
	FinSi
FinAlgoritmo
