Algoritmo Mi_procceso
	Definir edad Como Entero;
	edad <- 0;
	Escribir "Cual es tu edad?";
	Leer edad;
	Segun edad hacer
		0: 
			Escribir "Tu edad es cero";
		1: 
			Escribir "Tu edad es uno";
		2: 
			Escribir "Tu edad es dos";
		De Otro Modo:
			Escribir "Tu edad puede ser:", edad;
	FinSegun
	Escribir "No se cual es tu edad";
FinAlgoritmo
