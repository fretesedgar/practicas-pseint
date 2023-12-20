//
//  AVISO!!!
//
// El programa fue desasarrollado para ser ejecutado en la configuracón ESTRICTA estándar (Sin personalizacion)
// Para visualizar correctamente agrandar la pantalla de ejecucucion

Proceso PRESENTACION_FINAL
	mensaje_bienvenida;
	portada;
	login;
	menu_principal;
FinProceso

SubProceso mensaje_bienvenida
	Limpiar Pantalla;
	Definir espera como entero; espera <- 7; Definir porcent Como Caracter;
	Escribir "=================================================================================";
	Escribir "     ____                                                      __                ";  
	Escribir "    /\  _`\    __                                       __    /\ \               ";  
	Escribir "    \ \ \L\ \ /\_\     __    ___   __  __    __    ___ /\_\   \_\ \    ___       ";  
	Escribir "     \ \  _ <´\/\ \  /´__`\/´ _ `\/\ \/\ \ /´__`\/´ _ `\/\ \  /´_` \  / __`\     ";  
	Escribir "      \ \ \L\ \\ \ \/\  __//\ \/\ \ \ \_/ /\  __//\ \/\ \ \ \/\ \L\ \/\ \L\ \    ";  
	Escribir "       \ \____/ \ \_\ \____\ \_\ \_\ \___/\ \____\ \_\ \_\ \_\ \___,_\ \____/    ";  
	Escribir "        \/___/_  \/_/\/____/\/_/\/_/\/__/ _\/____/\/_/\/_/\/_/\/__,_ /\/___/     ";  
	Escribir "          /\_ \               __        /\ \__                                   ";
	Escribir "      _   \//\ \         ____/\_\    ___\ \ ,_\    __    ___ ___      __         ";
	Escribir "    /´__`\  \ \ \       /´,__\/\ \  /´,__\ \ \/  /´__`\/´ __` __`\  /´__`\       ";
	Escribir "   /\ \L\.\_ \_\ \_    /\__, `\ \ \/\__, `\ \ \_/\  __//\ \/\ \/\ \/\ \L\.\_     ";
	Escribir "   \ \__/.\_\/\____\   \/\____/\ \_\/\____/\ \__\ \____\ \_\ \_\ \_\ \__/.\_\    ";
	Escribir "    \/__/\/_/\/____/    \/___/  \/_/\/___/  \/__/\/____/\/_/\/_/\/_/\/__/\/_/    ";
	Escribir "=================================================================================";
	Escribir "";
	Escribir "CARGANDO SISTEMA...";
	Repetir
		espera <- espera - 1;
		Esperar 600 Milisegundos;;
		Escribir Sin Saltar "=============";
	Hasta Que espera == 0
	Limpiar Pantalla;
	portada;
FinSubProceso

SubProceso portada
	Limpiar Pantalla;
	Escribir "";
	Escribir "                    |===================================================|";
	Escribir "                    |       UNIVERSIDAD TECNOLÓGICA INTERCONTINENTAL    |";
	Escribir "                    |          FACULTAD DE TECNOLOGÍA INFORMATICA       |";
	Escribir "                    | LICENCIATURA EN ANÁLISIS DE SISTEMAS INFORMÁTICOS |";
	Escribir "                    |                 INFORMÁTICA II                    |";
	Escribir "                    |===================================================|";
	Escribir "                    |Docente: Sergio Dominguez                          |";
	Escribir "                    |Autor:Edgar Gabriel Fretes Riquelme                |";
	Escribir "                    |C.I.: 4943194                                      |";
	Escribir "                    |Sede: Informatica y Derecho                        |";
	Escribir "                    |Año: 2023                                          |";
	Escribir "                    |===================================================|";
	Escribir "";
	Escribir "Presiona ENTER para continuar...";
	Esperar Tecla;
	login;
FinSubProceso

SubProceso login
	Limpiar Pantalla;
	Definir user, pass Como Caracter;
	Definir intentos Como Entero;
	intentos <- 3; // se inicia en 3
	Repetir
		Escribir "===== ACCESO AL SISTEMA ====";
		Escribir Sin Saltar "Usuario: ";
		leer user; // edgar
		Escribir Sin Saltar "Contraseña: ";
		leer pass; // root
		Limpiar Pantalla;
		//Primera validacion
		user <- Minusculas(user); // convertir en minusculas
		pass <- Minusculas(pass); // convertir en minusculas
		// Utilizamos una condicion de verificacion de usuarios y contraseñas
		si user == "edgar" y pass == "root" Entonces
			Escribir "===== ACCESO CORRECTO =====";
		SiNo
			Escribir "";
			Escribir "USUARIO O CONTRASEÑA INCORRECTA...";
			// Validación: El usuario tendra 3 intentos como advertencia
			// Mostrar los intentos que les vaya restado
			// Mostrar el desbloqueo por 15 segundos
			intentos <- intentos - 1; //Contador descendente
			Escribir "";
			Escribir "Te quedan [", intentos, "] intentos";
			Escribir "";
			si intentos = 0 Entonces
				Escribir "BLOQUEADO TEMPORALMENTE";
				Escribir "Se bloqueará de nuevo en 10 segundos, espere...";
				contador;
				intentos <- 2;
				Limpiar Pantalla;
			FinSi
		FinSi
	Hasta Que user == "edgar" y pass = "root"
	Esperar 3 segundos;
	Limpiar Pantalla;
	menu_principal;
FinSubProceso


SubProceso contador
	Definir cont Como Entero;
	cont <- 10;
	Escribir "    ";
	Repetir
		Escribir Sin Saltar cont, " ";
		cont <- cont - 1;
		Esperar 1 Segundos;
	Hasta Que cont == 0
FinSubProceso

SubProceso menu_principal
	Limpiar Pantalla;
	Definir opcion Como Entero;
	
	Escribir " |=============================================================|";
	Escribir "  	   _____      __              _                            ";
	Escribir "    / ___/___  / /_  __________(_)___  ____  ___                ";
	Escribir "    \__ \/ _ \/ / _ \/ ___/ ___/ / __ \/ __ \/ _ \              ";
	Escribir "   ___/ /  __/ /  __/ /__/ /__/ / /_/ / / / /  __/              "; 
	Escribir "  /____/\___/_/\___/\___/\___/_/\____/_/ /_/\___/               ";  
	Escribir "    ___  / /  ____  _____ ___  ____  _____ ___  ____ ___  ____ _";
	Escribir "   / _ \/ /  / __ \/ ___/ __ \/ __ `/ ___/ __ `/ __ `__ \/ __ `/";
	Escribir "  /  __/ /  / /_/ / /  / /_/ / /_/ / /  / /_/ / / / / / / /_/ / "; 
	Escribir "  \___/_/  / .___/_/   \____/\__, /_/   \__,_/_/ /_/ /_/\__,_/  "; 
	Escribir "          /_/               /____/                              ";
	Escribir " |=============================================================|";
	Escribir "";
	Escribir "Elija cualquiera de las dos opciones de la lista para ejecutar el programa...";
	Escribir "Ingrese 1 --> EXAMEN FINAL";
	Escribir "Ingrese 2 --> EJERCICIOS DEL 1 AL 40";
	Escribir "Ingrese 3 --> CERRAR SESIÓN";
		
	Leer opcion;

		Segun opcion Hacer
		1:
			examen_final;
		2:
			ejercicios_40;
		3: 
			portada;
			
		De Otro Modo:
			Escribir "¡¡Elije una opcion válida!!";
		FinSegun
	
	Limpiar Pantalla;	
FinSubProceso



SubProceso  ejercicios_40
	Limpiar Pantalla;
	Definir opcion Como Entero;
	Escribir " |=============================================================|";
	Escribir "          ______                                        ";
	Escribir "         / ____/ (_)__  __________  (_)____ (_)___  _____";
	Escribir "	       / __/   / / _ \/ ___/ ___// / ___// / __ \/ ___/";
	Escribir "	      / /___  / /  __/ /  / /__// / /__// / /_/ (__  ) ";
	Escribir "	     /_____/_/ /\___/_/   \___//_/\___//_/\____/____/  ";
	Escribir "	          /___/                                        ";
	Escribir " |=============================================================|";
	Escribir "";
	Repetir
		Escribir "Ingrese del 1 al 40 ---> Ejercicios del 1 al 40";
		Escribir "Ingrese 99 ---> Atrás";
		Leer opcion;
		Segun opcion Hacer
			1:ejercicio_1;
			2:ejercicio_2;
			3:ejercicio_3;
			4:ejercicio_4;
			5:ejercicio_5;
			6:ejercicio_6;
			7:ejercicio_7;
			8:ejercicio_8;
			9:ejercicio_9;
			10:ejercicio_10;
			11:ejercicio_11;
			12:ejercicio_12;
			13:ejercicio_13;
			14:ejercicio_14;
			15:ejercicio_15;
			16:ejercicio_16;
			17:ejercicio_17;
			18:ejercicio_18;
			19:ejercicio_19;
			20:ejercicio_20;
			21:ejercicio_21;
			22:ejercicio_22;
			23:ejercicio_23;
			24:ejercicio_24;
			25:ejercicio_25;
			26:ejercicio_26;
			27:ejercicio_27;
			28:ejercicio_28;
			29:ejercicio_29;
			30:ejercicio_30;
			31:ejercicio_31;
			32:ejercicio_32;
			33:ejercicio_33;
			34:ejercicio_34;
			35:ejercicio_35;
			36:ejercicio_36;
			37:ejercicio_37;
			38:ejercicio_38;
			39:ejercicio_39;
			40:ejercicio_40;
			99:menu_principal;
			De Otro Modo:
				Escribir "Escribe un numero valido!!";
		FinSegun
	Hasta Que opcion >= 1 o opcion <= 40
	
FinSubProceso
	

SubProceso ejercicio_1
	Limpiar Pantalla;
	Escribir "Ejercicio 1";
	Escribir "";
	Escribir "Este es un pseudo-código que permite SUMAR dos números introducidos por el usuario.";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir n1, n2 Como Entero;
	Escribir Sin Saltar "Primer numero-";
	leer n1;
	Escribir Sin Saltar "Segundo numero-";
	leer n2;
	Escribir "";
	Escribir "El resultado de ",n1," + ", n2," es: ", n1+n2;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_2
	Limpiar Pantalla;
	Escribir "Ejercicio 2";
	Escribir "";
	Escribir "Este es un pseudo-código que permite RESTAR dos números introducidos por el usuario.";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir n1, n2 Como Entero;
	Escribir Sin Saltar "Primer numero-";
	leer n1;
	Escribir Sin Saltar "Segundo numero-";
	leer n2;
	Escribir "";
	Escribir "El resultado de ",n1," - ", n2," es: ", n1-n2;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_3
	Limpiar Pantalla;
	Escribir "Ejercicio 3";
	Escribir "";
	Escribir "Este es un pseudo-código que permite MULTIPLICAR dos números introducidos por el usuario.";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir n1, n2 Como Entero;
	Escribir Sin Saltar "Primer numero-";
	leer n1;
	Escribir Sin Saltar "Segundo numero-";
	leer n2;
	Escribir "";
	Escribir "El resultado de ",n1," por ", n2," es: ", n1*n2;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_4
	Limpiar Pantalla;
	Escribir "Ejercicio 4";
	Escribir "";
	Escribir "Este es un pseudo-código que permite DIVIDIR dos números introducidos por el usuario.";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir n1, n2 Como Entero;
	Escribir Sin Saltar "Primer numero-";
	leer n1;
	Escribir Sin Saltar "Segundo numero-";
	leer n2;
	Escribir "";
	Escribir "El resultado de ",n1," dividido por ", n2," es: ", n1/n2;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_5
	Limpiar Pantalla;
	Escribir "Ejercicio 5";
	Escribir "";
	Escribir "Este es un pseudo-código que permite elevar a la POTENCIA el número introducido por el usuario.";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir n1, n2 Como Entero;
	Escribir Sin Saltar "Primer numero-";
	leer n1;
	Escribir Sin Saltar "Segundo numero-";
	leer n2;
	Escribir "";
	Escribir "El resultado de ",n1," elevado a ", n2," es: ", n1^n2;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_6
	Limpiar Pantalla;
	Escribir "Ejercicio 6";
	Escribir "";
	Escribir "Este es un pseudo-código que permite dar como resultado, el RESIDUO de una DIVISIÓN entera. También muestra el cociente";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir n1, n2, cociente Como real;
	Escribir Sin Saltar "Primer numero-";
	leer n1;
	Escribir Sin Saltar "Segundo numero-";
	leer n2;
	cociente <- n1/n2;
	Escribir "";
	Escribir "El cociente de ",n1," dividido ", n2," es: ", cociente, " y el resto es: ", n1%n2;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_7
	Limpiar Pantalla;
	Escribir "Ejercicio 7";
	Escribir "";
	Escribir "Este es un pseudo-código que permite calcular el IVA (Impuesto al valor agregado) ";
	Escribir "";
	Escribir "|Para calcular escribe un número y presiona enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir n1 Como entero;
	Escribir Sin Saltar "Precio del producto-";
	leer n1;
	Escribir "";
	Escribir "El IVA al 10% es ", trunc(n1/11);
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_8
	Limpiar Pantalla;
	Escribir "Ejercicio 8";
	Escribir "";
	Escribir "Este es un pseudo-código que permite ingresar 5 valores numéricos y mostrar por pantalla el promedio de los datos y la suma";
	Escribir "";
	Escribir "|Para calcular escribe un número, presiona enter para agregar el siguiente número cinco veces y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir a, b, c, d, e Como entero;
	Escribir Sin Saltar "Primer número-";
	leer a;
	Escribir Sin Saltar "Segundo número-";
	leer b;
	Escribir Sin Saltar "Tercer número-";
	leer c;
	Escribir Sin Saltar "Cuarto número-";
	leer d;
	Escribir Sin Saltar "Quinto número-";
	leer e;
	Escribir "La suma de los valores cargados da como resultado: ", (a+b+c+d+e), " y el promedio es: ", (a+b+c+d+e)/5;
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_9
	Limpiar Pantalla;
	Escribir "Ejercicio 9";
	Escribir "";
	Escribir "Este es un pseudo-código que solicita un número (x) y que imprime la tabla de multiplicar de ese número del 1 al 10. (No utiliza estructura repetitiva)";
	Escribir "";
	Escribir "|Para calcular escribe un número y presiona enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir n1 Como Entero;
	Escribir Sin Saltar "Elija un numero para mostrar su tabla de multiplicar hasta el 10 -";
	leer n1;
	Escribir "El resultado de ",n1," x 1 ","es: ", n1*1;
	Escribir "El resultado de ",n1," x 2 ","es: ", n1*2;
	Escribir "El resultado de ",n1," x 3 ","es: ", n1*3;
	Escribir "El resultado de ",n1," x 4 ","es: ", n1*4;
	Escribir "El resultado de ",n1," x 5 ","es: ", n1*5;
	Escribir "El resultado de ",n1," x 6 ","es: ", n1*6;
	Escribir "El resultado de ",n1," x 7 ","es: ", n1*7;
	Escribir "El resultado de ",n1," x 8 ","es: ", n1*8;
	Escribir "El resultado de ",n1," x 9 ","es: ", n1*9;
	Escribir "El resultado de ",n1," x 10 ","es: ", n1*10;
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_10
	Limpiar Pantalla;
	Escribir "Ejercicio 10";
	Escribir "";
	Escribir "Este es un pseudo-código que permite introducir un número y mostrar por pantalla si el número ingresado es positivo, negativo o neutro.";
	Escribir "";
	Escribir "|Para calcular escribe un número y presiona enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir n1,comp Como Entero;
	Escribir Sin Saltar "Ingrese un numero para determinar si es positivo, negativo o neutro-";
	leer n1;
	Escribir "";
	Si n1>0 Entonces
		Escribir "El un número que ingresaste es postivo";
	SiNo
		Si n1<0 Entonces
			Escribir "El un número que ingresaste es un numero negativo";
		SiNo
			Escribir "El un número que ingresaste es un numero neutro";
		FinSi
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso


SubProceso ejercicio_11
	Limpiar Pantalla;
	Escribir "Ejercicio 11";
	Escribir "";
	Escribir "Este es un pseudo-código permite introducir datos del usuario y decidir si es apto o no";
	Escribir "";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir cedula_identidad, edad, telefono Como Entero;
	Definir nombreyapellido, sexo, direccion, trabajo Como Caracter;
	
	Escribir Sin Saltar "C.I. -";
	Leer cedula_identidad;
	Escribir  Sin Saltar "Nombre y Apellido -";
	Leer nombreyapellido;
	Escribir  Sin Saltar "Edad -";
	Leer edad;
	Escribir  Sin Saltar "Sexo M/F -";
	Leer sexo;
	Escribir  Sin Saltar "Direccion -";
	Leer direccion;
	Escribir  Sin Saltar "Telefono -";
	Leer telefono;
	Escribir  Sin Saltar "Trabajas Si/No -";
	Leer trabajo;
	
	Si sexo="M" y (edad >= 18 y edad <= 25) y trabajo="No" Entonces
		Escribir "Eres apto para realizar el servicio militar";
	SiNo
		Escribir "No eres apto para realizar el servicio militar";
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_12
	Limpiar Pantalla;
	Escribir "Ejercicio 12";
	Escribir "";
	Escribir "Este es un pseudo-código que muestra en pantalla un mensaje si el usuario responde correctamente con el resultado de su operacion";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para continuar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir num1, num2, suma12, resta12, suma_resta, resultado Como Entero;
	Leer  num1;
	Leer num2;
	suma12 <- num1+num2;
	resta12 <- num1-num2;
	suma_resta <- azar(2);
	si suma_resta == azar(2) Entonces
		Escribir Sin Saltar "El resultado de la suma es -";
		leer resultado;
		Si suma12 == resultado Entonces
			Escribir "Eres brillante";
		SiNo
			Escribir "Siga practicando";
		FinSi
	SiNo
		Escribir Sin Saltar "El resultado de la resta es -";
		leer resultado;
		Si resta12 == resultado Entonces
			Escribir "Eres brillante";
		SiNo
			Escribir "Siga participando";
		FinSi
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_13
	Limpiar Pantalla;
	Definir dia Como Entero;
	Escribir "Introduzca un numero del 1 al 7";
	Leer dia;
	si dia == 1 Entonces
		Escribir "Domingo";
	SiNo
		si dia == 2 Entonces
			Escribir "Lunes";
		SiNo
			si dia == 3 Entonces
				Escribir "Martes";
			SiNo
				si dia == 4 Entonces
					Escribir "Miercoles";
				SiNo
					si dia == 5 Entonces
						Escribir "Jueves";
					SiNo
						si dia == 6 Entonces
							Escribir "Viernes";
						SiNo
							si dia == 7 Entonces
								Escribir "Sabado";
							SiNo
								si dia >= 8 o dia == 0 o dia < 0 Entonces
									Escribir  "Ingresa un numero valido!!";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso
//condicional doble y multiple

SubProceso ejercicio_14
	Limpiar Pantalla;
	Definir num1, num2 Como Entero;
	Escribir "Introduzca dos numeros";
	Leer num1, num2;
	
	si num1 > num2 Entonces
		Escribir "El primer numero es mayor";
	SiNo
		si num2 > num1 Entonces
			Escribir "El segundo numero es mayor";
		SiNo
			si num1 == num2 Entonces
				Escribir "Los numeros proporcionados son iguales";
			FinSi
		FinSi
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_15
	Limpiar Pantalla;
	Escribir "Ejercicio 15";
	Escribir "";
	Escribir "Este es un pseudo-código que solicita al usuario introducir un número y que muestre por pantalla si el número ingresado es PAR o IMPAR";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir num Como Entero;
	Leer num;
	Escribir "";
	Si num mod 2 == 0 Entonces
		Escribir "Es un numero PAR";
	SiNo
		Escribir "Es un numero IMPAR";
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_16
	Definir mes Como Entero;
	Escribir "Introduzca un numero del 1 al 12";
	Leer mes;
	
	Segun mes Hacer
		1:
			Escribir "Enero";
		2:
			Escribir "Febrero";
		3:
			Escribir "Marzo";
		4:
			Escribir "Abril";
		5:
			Escribir "Mayo";
		6:
			Escribir "Junio";
		7:
			Escribir "Julio";
		8:
			Escribir "Agosto";
		9:
			Escribir "Setiembre";
		10:
			Escribir "Octubre";
		11:
			Escribir "Noviembre";
		12:
			Escribir "Diciembre";
		De Otro Modo:
			Escribir  "Ingresa un numero valido!!";
	FinSegun
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_17
	Limpiar Pantalla;
	Escribir "Ejercicio 17";
	Escribir "";
	Escribir "Este es un pseudo-código que permite la SUMA, RESTA, MULTIPLICACIÓN y DIVISIÓN a elección del usuario";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir "Elige un numero de la lista para realizar alguna operacion:";
	Escribir "1-) SUMA";
	Escribir "2-) RESTA";
	Escribir "3-) MULTIPLICACION";
	Escribir "4-) DIVISION";
	Escribir "5-) SALIR";
	
	Definir opcion Como Entero;
	Leer opcion;
	Segun opcion Hacer
		1:suma;
		2:resta;
		3:multiplicacion;
		4:division;
		5:ejercicios_40;
		De Otro Modo:
			Escribir "Elija un numero valido!!";
			Esperar 1 Segundos;
			ejercicio_17;
	FinSegun
FinSubProceso

SubProceso suma
	Limpiar Pantalla;
	Definir num1, num2 como numerico;
	Escribir "----SUMA DE DOS NUMEROS----";
	Escribir Sin Saltar "Ingresa el 1er numero -";
	Leer num1;
	Escribir Sin Saltar "Ingresa el 2ndo numero -";
	Leer num2;
	Escribir "";
	Escribir "El resultado de ", num1, " + ", num2, " es: ", num1 + num2;
	Escribir "";
	Escribir "Pulsa cualquier numero para retornar al menu de operaciones...";
	Esperar Tecla;
	ejercicio_17;
FinSubProceso

SubProceso resta
	Limpiar Pantalla;
	Definir num1, num2 como numerico;
	Escribir "----RESTA DE DOS NUMEROS----";
	Escribir Sin Saltar "Ingresa el 1er numero -";
	Leer num1;
	Escribir Sin Saltar "Ingresa el 2ndo numero -";
	Leer num2;
	Escribir "";
	Escribir "El resultado de ", num1, " - ", num2, " es: ", num1 - num2;
	Escribir "";
	Escribir "Pulsa cualquier numero para retornar al menu de operaciones...";
	Esperar Tecla;
	ejercicio_17;
FinSubProceso

SubProceso multiplicacion
	Limpiar Pantalla;
	Definir num1, num2 como numerico;
	Escribir "----MULTIPLICACION DE DOS NUMEROS----";
	Escribir Sin Saltar "Ingresa el 1er numero -";
	Leer num1;
	Escribir Sin Saltar "Ingresa el 2ndo numero -";
	Leer num2;
	Escribir "";
	Escribir "El resultado de ", num1, " * ", num2, " es: ", num1 * num2;
	Escribir "";
	Escribir "Pulsa cualquier numero para retornar al menu de operaciones...";
	Esperar Tecla;
	ejercicio_17;
FinSubProceso

SubProceso division
	Limpiar Pantalla;
	Definir num1, num2 como numerico;
	Escribir "----DIVISION DE DOS NUMEROS----";
	Escribir Sin Saltar "Ingresa el 1er numero -";
	Leer num1;
	Escribir Sin Saltar "Ingresa el 2ndo numero -";
	Leer num2;
	Escribir "";
	Escribir "El resultado de ", num1, " dividido ", num2, " es: ", num1 / num2;
	Escribir "";
	Escribir "Pulsa cualquier numero para retornar al menu de operaciones...";
	Esperar Tecla;
	ejercicio_17;
FinSubProceso

SubProceso ejercicio_18
	Limpiar Pantalla;
	Escribir "Ejercicio 18";
	Escribir "";
	Escribir "Este es un pseudo-código que permite introducir 3 números enteros y mostrar mensajes";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para continuar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir a, b, c Como Numerico;
	Escribir Sin Saltar "Primer numero-";
	leer a;
	Escribir Sin Saltar "Segundo numero-";
	leer b;
	Escribir Sin Saltar "Tercer numero-";
	leer c;
	Escribir "";
	si a < 0 Entonces
		Escribir "El primer nro es negativo entoces ", b, " * ", c, " es ", b*c;
	SiNo
		si a > 0 Entonces
			Escribir "El primer nro es positivo entonces ", a, " + ", b, " + ",  c, " = ", a+b+c;
		SiNo
			si a == 0 Entonces
				Escribir "El primer nro es igual a 0 entonces ", b, " / ", c, " = ", b/c;
				
			FinSi
		FinSi
	FinSi
	
	si c % 2 <> 0 Entonces
		Escribir "El tercer nro es impar entonces ",a, " elevado al cuadrado es... ", a ^ 2;
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_19
	Limpiar Pantalla;
	Escribir "Ejercicio 19";
	Escribir "";
	Escribir "Este es un pseudo-código que permite calcular porcentaje";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir monto Como Entero;
	Leer monto;
	Escribir "Pediatria: ", (monto/100)*10, " Gs.";
	Escribir "Clinica médica: ", (monto/100)*30, " Gs.";
	Escribir "Traumatologia: ", (monto/100)*40, " Gs.";
	Escribir "Ginecologia: ", (monto/100)*20, " Gs.";
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_20
	Limpiar Pantalla;
	Escribir "Ejercicio 20";
	Escribir "";
	Escribir "Este es un pseudo-código que permite mostrar un numero de 5 cifras con el orden invertido";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";	
	Definir digito, unidad, residuo, residuo2, decena, residuo3, residuo4, centena, decena_mil, unidad_mil como numerico;
	Leer digito;
	decena_mil <- trunc(digito/10000); // 12345/10000 = 1,2345 --> 1
	residuo <- digito mod 10000; // 12345 = 2345
	
	unidad_mil <- trunc(residuo/1000); // 2345/1000 = 2,345 --> 2
	residuo2 <- residuo mod 10000; // 12345 = 2345
	
	centena <- trunc(residuo2/100); // 345/100 = 3,45 --> 3
	residuo3 <- residuo2 mod 100; // 45
	
	decena <- trunc(residuo3/10); // 45/10 = 4,5 --> 4
	residuo4 <- residuo3 mod 10;
	
	unidad <- trunc(residuo4/1); // 5/1
	
	Escribir unidad, decena, centena, unidad_mil, decena_mil;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
	
FinSubProceso

SubProceso ejercicio_21
	Limpiar Pantalla;
	Escribir "Ejercicio 21";
	Escribir "";
	Escribir "Este es un pseudo-código que permite convertir dos nro negativo a positivo";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";	
	Definir num1, num2 Como Entero;
	Leer num1, num2;
	Escribir "";	
	Escribir abs(num1);
	Escribir abs(num1);
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_22
	Limpiar Pantalla;
	Escribir "Ejercicio 22";
	Escribir "";
	Escribir "Este es un pseudo-código que permite escribir un numero de 5 digitos de manera escalonada";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir digito, unidad, residuo, residuo2, decena, residuo3, residuo4, centena, decena_mil, unidad_mil como numerico;
	Leer digito;
	decena_mil <- trunc(digito/10000); // 12345/10000 = 1,2345 --> 1
	residuo <- digito mod 10000; // 12345 = 2345
	
	unidad_mil <- trunc(residuo/1000); // 2345/1000 = 2,345 --> 2
	residuo2 <- residuo mod 10000; // 12345 = 2345
	
	centena <- trunc(residuo2/100); // 345/100 = 3,45 --> 3
	residuo3 <- residuo2 mod 100; // 45
	
	decena <- trunc(residuo3/10); // 45/10 = 4,5 --> 4
	residuo4 <- residuo3 mod 10;
	
	unidad <- trunc(residuo4/1); // 5/1
	
	Escribir decena_mil;
	Escribir decena_mil, unidad_mil;
	Escribir decena_mil, unidad_mil, centena;
	Escribir decena_mil, unidad_mil, centena, decena;
	Escribir decena_mil, unidad_mil, centena, decena, unidad;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_23
	Limpiar Pantalla;
	Escribir "Ejercicio 23";
	Escribir "";
	Escribir "Este es un pseudo-código que permite mostrar el numero mayor de un grupo de tres numeros";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";	
	Definir a, b, c como numerico;
	Escribir Sin Saltar "Ingresar 1er nro -";
	Leer a;
	Escribir Sin Saltar "Ingresar 2ndo nro -";
	Leer b;
	Escribir Sin Saltar "Ingresar 3er nro -";
	Leer c;
	Escribir "";
	si a > b y a > c Entonces
		Escribir "";
		Escribir "El mayor es: ", a;
	SiNo
		si b > a y b > c Entonces
			Escribir "";
			Escribir "El mayor es: ", b;
		SiNo
			si c > a y c > b Entonces
				Escribir "";
				Escribir "El mayor es: ", c;
			FinSi
		FinSi
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para continuar con el ejercicio...";
	Esperar Tecla;
	Escribir "";
	si a mod 2 == 0 Entonces
		Escribir "El primer numero es PAR";
	SiNo
		Escribir "El primer numero es IMPAR";
	FinSi
	
	si b == trunc(b) Entonces
		Escribir "El segundo numero es ENTERO";
	SiNo
		Escribir "El segundo numero es REAL";
	FinSi
	
	si c == a Entonces
		Escribir "El tercer numero es IGUAL al primer numero";
	SiNo
		Escribir "El tercer numero es DIFERENTE al primer numero";
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_24
	Limpiar Pantalla;
	Escribir "Ejercicio 24";
	Escribir "";
	Escribir "Este es un pseudo-código que solicita al usuario dos numeros y sumar hasta 99.";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir  num1, num2, suma24 Como Entero;
	Repetir
		Escribir Sin Saltar "Primer nro -";
		Leer  num1;
		Escribir Sin Saltar "Segundo nro -";
		Leer num2;
		suma24 <- num1 + num2;
		si suma24 == 99 Entonces
			Escribir "Llegaste a 99";
		SiNo
			Escribir "Ingresa dos numeros hasta alcazar 99!!";
		FinSi
	Hasta Que suma24 == 99;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;	
FinSubProceso

SubProceso ejercicio_25
	Limpiar Pantalla;
	Escribir "Ejercicio 25";
	Escribir "";
	Escribir "Este es un pseudo-código que solicite al usuario ingresar DOS NÚMEROS CUALESQUIERA.";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	
	Definir num1, num2, opcion25 Como Entero;
	Escribir Sin Saltar"1er numero";
	Leer num1;
	Escribir Sin Saltar "2ndo numero";
	Leer num2;
	Escribir "";
	Escribir "Que quieres hacer con estos numeros?";
	Escribir "1-) SUMAR y MULTIPLICAR";
	Escribir "2-) RESTA y DIVISION";
	Leer opcion25;
	Segun opcion25 Hacer
		1: 
			Escribir "La suma de ", num1, " y ", num2, " es ", num1 + num2;
			Escribir "La multiplicacion de ", num1, " por ", num2, " es ", num1 * num2;
		2:
			Escribir "La resta de ", num1, " menos ", num2, " es ", num1 - num2;
			Escribir "La division de ", num1, " por ", num2, " es ", num1 / num2;
		De Otro Modo:
			Escribir "Elija un numero valido!!";
	FinSegun
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_26
	Limpiar Pantalla;
	Escribir "Ejercicio 26";
	Escribir "";
	Escribir "Este es un pseudo-código que solicita al usuario fecha";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir "";Definir date, dia, month, year Como Entero;
	Definir mes Como Caracter;
	Escribir "Algoritmo para ingresar fecha ...";
	Escribir "";
	Escribir "Escribe en numeros la Fecha: ";
	Leer date;
	Escribir "Escribe en numeros el Mes: ";
	Leer month;
	Escribir "Escribe en numeros el Año: ";
	Leer year;
	dia <- date;
	
	
	Segun month Hacer
		01:
			mes <- "Enero";
		02:
			mes <- "Febrero";
		03:
			mes <- "Marzo";
		04:
			mes <- "Abril";
		05:
			mes <- "Mayo";
		06:
			mes <- "Junio";
		07:
			mes <- "Julio";
		08:
			mes <- "Agosto";
		09:
			mes <- "Setiembre";
		10:
			mes <- "Octubre";
		11:
			mes <- "Noviembre";
		12:
			mes <- "Diciembre";
		De Otro Modo:
			mes <- "vacio";
	FinSegun
	Escribir "";
	
	Si dia <> 0 y dia <= 31 y mes <> "vacio" Entonces
		Escribir "";
		Escribir "Fecha ingresada---> ", dia," de ", mes, " del ", year;
	SiNo
		Escribir "";
		Escribir "Verifica que la fecha o el mes sea válido...";
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_27
	Limpiar Pantalla;
	Escribir "Ejercicio 27";
	Escribir "";
	Escribir "Este es un pseudo-código que permite simular un agendamiento en IPS";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir nombre, ciudad, eleccioncar Como Caracter;
	Definir ci, eleccionnum,numtelefono Como Entero;
	Escribir Sin Saltar "Nombre y apellido --";
	Leer nombre;
	Escribir Sin Saltar "Cedula de identidad --";
	Leer ci;
	Escribir Sin Saltar "Ciudad --";
	Leer ciudad;
	
	Limpiar Pantalla;
	Escribir "Bienvenidos al sistema MÍ IPS";
	Escribir "Pulsa ENTER para continuar...";
	Esperar Tecla;
	Limpiar Pantalla;
	
	Escribir "Elige la especialidad a la que deseas agendar...";
	Escribir "";
	Escribir "1-) Neumología";
	Escribir "2-) Neumología";
	Escribir "3-) Neurología";
	
	Leer eleccionnum;
	
	Segun eleccionnum Hacer
		1: 
			eleccioncar <- "Neumología";
		2: 
			eleccioncar <- "Nefrología";
		3: 
			eleccioncar <- "Neurología";
		De Otro Modo:
			eleccioncar <- "vacio";
			Escribir "Elige una opción válida!!";
	FinSegun
	
	Escribir "Has realizado un agendamiento para -->", eleccioncar;
	Escribir "Por favor escriba su número de telefono para que podamos contactarnos con usted en la brevedad posible...";
	Leer numtelefono;
	Escribir "Estaremos comunicandonos con usted al ", numtelefono;
	Escribir "Gracias por utilizar el sistema de agendamiento!";
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_28
	Limpiar Pantalla;
	Escribir "Ejercicio 28";
	Definir ci, salario_actual Como Entero;
	Definir nombre Como Caracter;
	Escribir "Bienvenido al sistema de recursos humanos, completa los siguientes datos:";
	Escribir "";
	Escribir Sin Saltar "Nombre del empleador --";
	Leer nombre;
	Escribir Sin Saltar "Cedula de identidad --";
	Leer ci;
	Escribir Sin Saltar "Salario actual --";
	Leer salario_actual;
	
	Escribir "El aumento del salario se detalla como sigue: ";
	Escribir "El sueldo actual es: ", salario_actual," Gs.", " aumentado en 25% queda definido a: ", salario_actual + ((salario_actual/100)*25), " Gs.";
	
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_29
	Limpiar Pantalla;
	Escribir "Ejercicio 29";
	Escribir "";
	Escribir "Este es un pseudo-código que permite mostrar en pantalla si un alumno esta aprobado o reprobado";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir Sin Saltar "Ingresa tu calificacion (0 al 100) --";
	Definir calif Como Entero;
	Leer calif;
	
	si calif >= 90 y calif <= 100 Entonces
		Escribir "";
		Escribir "=== Aprobado ===";
		Escribir "";
	SiNo
		si calif >= 80 y calif <= 89 entonces
			Escribir "";
			Escribir "=== Aprobado con necesidad de mejora ===";
			Escribir "";
		SiNo
			si calif >= 70 y calif <= 79 entonces
				Escribir "";
				Escribir "=== Aprobado con dificultad ===";
				Escribir "";
			SiNo
				si calif < 70 y calif > 0 Entonces
					Escribir "";
					Escribir "=== Reprobado ===";
					Escribir "";				
				FinSi			
			FinSi
		FinSi
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_30
	Limpiar Pantalla;
	Escribir "Ejercicio 30";
	Escribir "";
	Escribir "Este es un pseudo-código que permite simular un prestamo";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter para agregar el siguiente dígito y enter para continuar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir monto Como Entero;
	Definir nombre Como Caracter;
	Escribir Sin Saltar "Nombre --";
	Leer nombre;
	Escribir Sin Saltar "Monto total del crédito que desea --";
	Leer monto;
	Escribir "";
	Escribir Sin Saltar "Según lo solicitado el monto a pagar MENSUALMENTE es: ", monto+(monto*0.12), " Gs.";
	Escribir "";
	Escribir Sin Saltar "Según lo solicitado el monto ANUAL a pagar es: ", (monto+(monto*0.12))*12, " Gs.";
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_31
	Limpiar Pantalla;
	Escribir "Ejercicio 31";
	Escribir "";
	Escribir "Este es un pseudo-código que muestra los numero del 1 al 50 con (MIENTRAS, REPETIR Y PARA)";
	Escribir "";
	Escribir "|Para ejecutar el algoritmo presiona enter|";
	Escribir "Autor: Edgar Fretes";
	Definir i Como Entero;
	i <- 1;
	
	Esperar Tecla;
	Mientras i <= 50 Hacer
		Esperar 5 Milisegundos;
		Escribir  i;
		i <- i + 1;
	FinMientras
	Escribir "Fin ciclo MIENTRAS, presiona enter para continuar";
	
	Esperar Tecla;
	Repetir
		Esperar 5 Milisegundos;
		Escribir Sin Saltar  " ", i;
		i <- i + 1;
	Hasta Que i > 100;
	Escribir "";
	Escribir "Fin ciclo REPETIR, presiona enter para continuar";
	
	Esperar Tecla;
	Para i <- 1 Hasta 50 Con Paso 1 Hacer
		Esperar 5 Milisegundos;
		Escribir i;
	FinPara
	Escribir "Fin ciclo PARA, presiona enter para terminar";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_32
	Limpiar Pantalla;
	Escribir "Ejercicio 32";
	Escribir "";
	Escribir "Este es un pseudo-código que muestra los múltiplos de 3 hasta 90 (MIENTRAS, REPETIR Y PARA)";
	Escribir "";
	Escribir "|Para ejecutar el algoritmo presiona enter|";
	Escribir "Autor: Edgar Fretes";
	Definir i Como Entero;
	i <- 1;
	Escribir "";
	Esperar Tecla;
	Mientras i <= 90 Hacer
		Esperar 5 Milisegundos;
		i <- i + 1;
		si i mod 3 == 0 Entonces
			Escribir Sin Saltar " ", i;
		FinSi
	FinMientras
	Escribir "";
	Escribir "Fin ciclo MIENTRAS, presiona enter para continuar";
	Escribir "";
	Esperar Tecla;
	i <- 1;
	Repetir
		Esperar 5 Milisegundos;
		i <- i + 1;
		si i mod 3 == 0 Entonces
			Escribir Sin Saltar " ", i;
		FinSi
	Hasta Que i > 90;
	Escribir "";
	Escribir "Fin ciclo REPETIR, presiona enter para continuar";
	Escribir "";
	Esperar Tecla;
	Para i <- 1 Hasta 90 Con Paso 1 Hacer
		Esperar 5 Milisegundos;
		si i mod 3 == 0 Entonces
			Escribir Sin Saltar " ", i;
		FinSi
	FinPara
	Escribir "";
	Escribir "Fin ciclo PARA, presiona enter para terminar";
	Escribir "";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_33
	Limpiar Pantalla;
	Escribir "Ejercicio 33";
	Escribir "";
	Escribir "Este es un pseudo-código que muestra los múltiplos del 3, pero de manera descendente del 90 al 3";
	Escribir "";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir "Pulsa ENTER para empezar...";
	Esperar Tecla;
	Escribir "";
	Definir num, aux Como Entero;
	aux <- 99;
	
	Repetir
		aux <- aux - 1;
		Si aux mod 3 == 0 y aux > 0 Entonces
			Escribir aux;
		FinSi
	Hasta Que aux == 0;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_34
	Limpiar Pantalla;
	Escribir "Ejercicio 34";
	Escribir "";
	Escribir "Este es un pseudo-código que muestra los múltiplos del 50 hasta 1000";
	Escribir "";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir "Pulsa ENTER para empezar...";
	Esperar Tecla;
	Escribir "";
	
	Definir num, aux Como Entero;
	aux <- 50;
	
	Repetir
		aux <- aux + 1;
		Si aux mod 50 == 0 y aux > 0 Entonces
			Escribir aux;
		FinSi
	Hasta Que aux == 1000;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_35
	Limpiar Pantalla;
	Escribir "Ejercicio 35";
	Escribir "";
	Escribir "Este es un pseudo-código que muestra los números de 10 en 10 hasta 100";
	Escribir "";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir "Pulsa ENTER para empezar...";
	Esperar Tecla;
	Escribir "";
	Definir aux Como Entero;
	aux <- 10;
	
	Repetir
		aux <- aux + 10;
		Escribir aux;
	Hasta Que aux == 100;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_36
	Limpiar Pantalla;
	Escribir "Ejercicio 36";
	Escribir "";
	Escribir "Este es un pseudo-código que permita ingresar un número menor a 10 y que el algoritmo debe incrementar del número ingresado hasta 10.";
	Escribir "";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir "Ingresa un numero menor a 10 y pulsa ENTER para empezar...";
	Escribir "";
	Definir aux Como Entero;
	Leer aux;
	
	Si aux < 10 Entonces
		Repetir
			aux <- aux + 1;
			Escribir aux;
		Hasta Que aux == 10;
	SiNo
		Escribir "";
		Escribir "Ingresa un numero entre 0 y 10!";
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_37
	Limpiar Pantalla;
	Escribir "Ejercicio 36";
	Escribir "";
	Escribir "Este es un pseudo-código que permite mostrar los números del 49 hasta el 9 de forma descendente.";
	Escribir "";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir "Pulsa ENTER para empezar...";
	Escribir "";
	Esperar Tecla;
	Definir aux Como Entero;
	aux <- 49;
	Repetir
		Escribir aux;
		aux <- aux - 1;
	Hasta Que aux == 9;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_38
	Limpiar Pantalla;
	Escribir "Ejercicio 38";
	Escribir "";
	Escribir "Este es un pseudo-código que permite mostrar los números del 12 hasta el 123 de forma ascendente, de forma vertical";
	Escribir "";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir "Pulsa ENTER para empezar...";
	Escribir "";
	Esperar Tecla;
	Definir aux Como Entero;
	aux <- 12;
	Repetir
		Escribir aux;
		aux <- aux + 1;
	Hasta Que aux == 124;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_39
	Limpiar Pantalla;
	Escribir "Ejercicio 39";
	Escribir "";
	Escribir "Este es un pseudo-código que permite ingresar un número entero positivo N y luego calcule la suma de todos los números pares desde 1 hasta N.";
	Escribir "";
	Escribir "|Para realizar el cálculo escribe un número luego presiona enter ejecutar|";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Definir aux, num Como Entero;
	Escribir "Escribe un numero el número:";
	Leer aux;
	num <- 1;
	Escribir "";
	
	Si aux > 0 Entonces
		Repetir
			num <- num + 1;
			Si num mod 2 == 0 Entonces
				Escribir num;
			FinSi
		Hasta Que num == aux
		
	SiNo
		Escribir "";
		Escribir "Escribe un numero positivo!";
	FinSi
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso

SubProceso ejercicio_40
	Limpiar Pantalla;
	Escribir "Ejercicio 40";
	Escribir "";
	Escribir "Este es un pseudo-código que permite mostrar los  números del 9 al 49 de forma ascendente";
	Escribir "";
	Escribir "Autor: Edgar Fretes";
	Escribir "";
	Escribir "Pulsa ENTER para empezar...";
	Escribir "";
	Esperar Tecla;
	Definir aux Como Entero;
	aux <- 9;
	Repetir
		Escribir aux;
		aux <- aux + 1;
	Hasta Que aux == 50;
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menú...";
	Esperar Tecla;
	ejercicios_40;
FinSubProceso


// // // // // // // // // // // // // // // // // // // // 
//  EXAMEN FINAL //
// // // // // // // // // // // // // // // // // // // // 



// El programa fue desarrollado para que se ejecute en la configuracion ESTRICTO estandar (sin personalizar)
//SIMULADOR DE GESTIÓN DE CALIFICACIONES EN EL SISTEMA ACADÉMICO DE UTIC

SubProceso examen_final  // Este es el proceso principal 
	portadaexa;
	menu;
	main;
FinSubProceso

SubProceso portadaexa
	Definir espera Como Entero; espera <- 6;
	Escribir "=============================";
	Escribir "    === EXAMEN FINAL ===";
	Escribir "=============================";
	Escribir "Bienvenido al sistema de la";
	Escribir "  _    _ _______ _____ _____ ";
	Escribir " | |  | |__   __|_   _/ ____|";
	Escribir " | |  | |  | |    | | |     ";
	Escribir " | |  | |  | |    | | |     ";
	Escribir " | |__| |  | |   _| | |____ ";
	Escribir "  \____/   |_|  |_____\_____|";
	Escribir "==============================";
	Escribir "Espere mientras carga el sistema...";
	Repetir                                                   //--------> Recrea el efecto de carga de pantalla
		espera <- espera - 1;
		Esperar 600 Milisegundos;;
		Escribir Sin Saltar "=======";
	Hasta Que espera == 0
	Limpiar Pantalla;
FinSubProceso

SubProceso menu
	Limpiar Pantalla;
	
	Escribir "";
	Escribir "    ========================================";
	Escribir "   |       _    _ _______ _____ _____       |";
	Escribir "   |      | |  | |__   __|_   _/ ____|      |";
	Escribir "   |      | |  | |  | |    | | |            |";
	Escribir "   |      | |  | |  | |    | | |            |";
	Escribir "   |      | |__| |  | |   _| | |______      |";
	Escribir "   |       \____/   |_|  |_____\______|     |";
	Escribir "   |UNIVERSIDAD TECNOLOGICA INTERCONTINENTAL|";
	Escribir "    / ===================================== \";
	Escribir "    \      SEDE DERECHO E INFORMATICA      /";
	Escribir "     ====================================== ";
	
	
	Escribir "";
	Escribir "   ========================================  ";
	Escribir "                EXAMEN FINAL                 ";
	Escribir  "  ========================================  ";
	Escribir "";
	Escribir "1) -- Ingresar al SISTEMA ACADEMICO";
	Escribir "2) -- Atras";
	Definir opcion_f Como Entero;
	Leer opcion_f;
	Segun opcion_f Hacer                //----------------------> Menu del examen final donde  se elije ingresar o retoranar al menu
		1:
			main;
		2:
			menu_principal;
		De Otro Modo:
			Escribir "¡¡Elije una opcion válida!!";
	FinSegun
FinSubProceso

SubProceso main
	Limpiar Pantalla;
	Definir tp,parcial,final,total Como Entero;
	Definir promedio como numerico;
	Definir nombre_alumno,materia Como Caracter;
	
	Escribir "";
	Escribir "    ========================================";
	Escribir "   |       _    _ _______ _____ _____       |";
	Escribir "   |      | |  | |__   __|_   _/ ____|      |";
	Escribir "   |      | |  | |  | |    | | |            |";
	Escribir "   |      | |  | |  | |    | | |            |";
	Escribir "   |      | |__| |  | |   _| | |______      |";
	Escribir "   |       \____/   |_|  |_____\______|     |";
	Escribir "   |UNIVERSIDAD TECNOLOGICA INTERCONTINENTAL|";
	Escribir "    / ===================================== \";
	Escribir "    \      SEDE DERECHO E INFORMATICA      /";
	Escribir "     ====================================== ";
	
	Escribir "";
	Escribir Sin Saltar "Ingrese el nombre y apellido del alumno -"; //----------------------> Se solicita el nombre del alumno
	Leer nombre_alumno;
	Escribir Sin Saltar "Ingrese el nombre de la materia a calificar -"; //----------------------> Se solicita el nombre de la materia
	Leer materia;
	
	Escribir "";
	
	Repetir
		Escribir "Ingrese calificación de Trabajo Practico: "; // Se condiciona como valor maximo 20 puntos y minimo 0
		Leer  tp;
		
		si tp >= 21 Entonces
			Escribir "Puntuacion maxima del trabajo Practico es 20";
		SiNo
			si tp <= 0 Entonces
				Escribir "Puntuacion minima del trabajo Practico es 0";
			FinSi
		FinSi
	Hasta Que tp >= 0 y tp <= 20;
	
	
	Repetir
		Escribir "Ingrese calificación de parcial: "; // Se condiciona como valor maximo 30 puntos y minimo 0
		Leer parcial;
		
		si parcial >= 31 Entonces
			Escribir "Puntuacion maxima del examen Parcial es 30";
		SiNo
			si parcial <= 0 Entonces
				Escribir "Puntuacion minima del Parcial es 0";
			FinSi
		FinSi
	Hasta Que parcial >= 0 y parcial <= 30;
	
	Repetir
		Escribir "Ingrese calificación de final: "; // Se condiciona como valor maximo 50 puntos y minimo 0
		Leer final;
		si final >= 51 Entonces
			Escribir "Puntuacion maxima del examen final es 50";
		SiNo
			si final <= 0 Entonces
				Escribir "Puntuacion minima del Examente Final es 0";
			SINO 
				SI final <= 29 Entonces
					Escribir "Para poder sumar los puntajes del Parcial y Trabajo Practico, en el examen final tu calificacion debe superar los 30 puntos";
				FinSi
			FinSi
		FinSi
	Hasta Que final >= 0 y final <= 50;
	
	
	Escribir "";
	si final >= 30 Entonces // En el caso de que no se haya alcanzado como minimo 30 puntos no se suma el tp ni el parcial
		Escribir "Total: ", tp+parcial+final;
	SiNo
		si final <= 29 Entonces
			Escribir "Total: ", final;
		FinSi
	FinSi
	
	total <- parcial + tp + final;
	
	si total >= 90 y total <= 100 Entonces // Se condiciona el total para definir si el alumno esta aprobado o reprobado
		Escribir "Puntuación Total: ", total;
		escribir"Calificación: ", " 5 ", " Aprobado";
	SiNo
		Si final <= 29 entonces
			Escribir "Puntuación Total: ", final;
			Escribir "Calififación: ", " 1 " , " APLAZADO";
		SiNo
			si total >= 80 y total <= 89 Entonces
				Escribir "Puntuación Total: ", total;
				escribir"Calificación: ", " 4 ", " Aprobado";
			SiNo
				Si final <= 29 entonces
					Escribir "Puntuación Total: ", final;
					Escribir "Calificacion: ", " 1 " ,  " APLAZADO";
				SiNo
					si total >= 70 y total <= 79 Entonces
						Escribir "Puntuación Total: ", total;
						escribir"Calificación: ", " 3 ", " Aprobado";
					SiNo
						Si final <= 29 entonces
							Escribir "Puntuación Total: ", final;
							Escribir "Calififacion: ", 1 ,  " APLAZADO";
						SiNo
							si total >= 60 y total <= 69 Entonces
								Escribir "Puntuación Total: ", total;
								escribir"Calificación: ", " 2 ", " Aprobado";
							SiNo
								Si final <= 29 entonces
									Escribir "Puntuación Total: ", final;
									Escribir "CalifiCacion: ", " 1 " ,  " APLAZADO";
								sino
									si total >= 0 y total <= 59 Entonces
										Escribir "Puntuación Total: ", total;
										escribir"Calificación: ", " 1 ", " APLAZADO ";
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
	
	Limpiar Pantalla;
	Escribir "Puntajes Obtenidos";
	Escribir "";
	
	Escribir "\=====================================================/";
	Escribir "|       Resumen de Calificaciónes de ALUMNOS         |";
	Escribir "/=====================================================\";
	Escribir "";
	
	si final >= 30 Entonces        // Se muestra en pantalla el resultado final de las calificaciones
		Escribir "/=========================================================\";
		Escribir "|| Nombre: ", nombre_alumno, " / Materia: ", materia, " / Total: ", tp+parcial+final, " Aprobado ", "||";
		Escribir "\=========================================================/";
	SINo
		si final <= 29 Entonces
			Escribir "/=========================================================\";
			Escribir "Nombre: ", nombre_alumno, " / Materia: ", materia, " / Total: ", final, " Aplazado";
			ESCRIBIR "\=========================================================/";
		FinSi
	FinSi
	
	promedio <- ((tp*20/100)+(parcial*30/100)+(final*50/100)); 
	Escribir "Promedio es ",promedio;
	
	
	Escribir "";
	Escribir "Pulsa cualquier tecla para regresar al menu...";
	Esperar Tecla;
	menu;
FinSubProceso








SubProceso salir
	Limpiar Pantalla;
	Escribir "               _____ _                     ";
	Escribir " __  ____  __ |  ___(_)_, __   __  ____  __";
	Escribir " \ \/ /\ \/ / | |_  | |  _ \  \ \/ /\ \/ /";
	Escribir "  >  <  >  <  |  _| | | | | |  >  <  >  < ";
	Escribir " /_/\_\/_/\_\ |_|   |_|_| |_| /_/\_\/_/\_\";

FinSubProceso

//https://patorjk.com/software/taag/#p=display&f=Standard&t=Bienvenido!%20