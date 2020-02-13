Proceso operacionesAlgoritmicas
	menu();
FinProceso

SubProceso menu()
	Definir op como entero;
	
	Repetir
		Escribir " ";
		Escribir "*********************MENU*********************";	
		Escribir "Ingrese el numero de la opcion que desea realizar";
		Escribir "1.-Secuencial";
		Escribir "2.-Condicional Si Entonces";
		Escribir "3.-Condicional Si Entonces anidado";
		Escribir "4.-Condicional Segun";
		Escribir "5.-Repetitiva Mientras";
		Escribir "6.-Repetitiva Repetir";
		Escribir "7.-Repetitiva Para";
		Escribir "8.-Arreglo Simple";
		Escribir "9.-Arreglo Bidimensional";
		Escribir "10.-Salir";
		Leer op;
		
		Segun op Hacer
			1:
				funcion1();
			2:
				funcion2();
			3:
				funcion3();
			4:
				funcion4();
			5:
				funcion5();
			6:
				funcion6();
			7:
				funcion7();
			8:
				funcion8();
			9:
				funcion9();
			10:	
				Escribir "Adios!";
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "Opcion elegida no es valida";
		FinSegun
	Hasta Que op>10 y op<1 O op=10
	
FinSubProceso

SubProceso funcion1()
	Definir n1 Como Real;
	Definir n2 Como Real;
	Definir n3 Como Real;
	Escribir "Ingrese 3 numeros:";
	Leer n1;
	Leer n2;
	Leer n3;
	
	Definir promedio Como Real;
	promedio<-(n1+n2+n3)/3;
	Escribir "El promedio de los 3 numeros ingresado es: ", promedio;
FinSubProceso

SubProceso funcion2()
	Definir genero Como Caracter;
	Definir nombre Como Caracter;
	
	Escribir "Ingrese su nombre:";
	Leer nombre;
	Escribir "Ingrese su genero (Masculino/Femenino):";
	Leer genero;
	//convierto en minusculas el genero que ingreso para que pueda ingresar su opcion con minusculas o mayusculas.
	Si Minusculas(genero)="masculino" Entonces
		Escribir "A ",nombre," le corresponde el baño de hombres";
	SiNo
		Si Minusculas(genero)="femenino" Entonces
			Escribir "A ",nombre," le corresponde el baño de mujeres";
		SiNo
			Escribir "Opcion ingresada es incorrecta";
		FinSi
		
	FinSi
	
FinSubProceso

SubProceso funcion3()
	definir op como caracter;
	Escribir "Ingrese la opcion que desea utilizar(Baño/Ducha):";
	Leer op;
	funcion2();
	Si Minusculas(op)="baño" Entonces
		Escribir "y debe pagar $250";
		
	SiNo
		Si Minusculas(op)="ducha" Entonces
			Escribir "y debe pagar $2500";
		SiNo
			Escribir "opcion ingresada no es valida";
		FinSi
	FinSi
	
FinSubProceso

SubProceso funcion4()
	Definir num como entero;
	Escribir "Ingrese un numero del 1 al 10";
	Leer num;
	Segun num Hacer
		1:
			Escribir "Ingreso el numero UNO";
		2:
			Escribir "Ingreso el numero DOS";
		3:
			Escribir "Ingreso el numero TRES";
		4:
			Escribir "Ingreso el numero CUATRO";
		5:
			Escribir "Ingreso el numero CINCO";
		6:
			Escribir "Ingreso el numero SEIS";
		7:
			Escribir "Ingreso el numero SIETE";
		8:
			Escribir "Ingreso el numero OCHO";
		9:
			Escribir "Ingreso el numero NUEVE";
			
		10:
			Escribir "Ingreso el numero UNO";
		De Otro Modo:
			Escribir "Numero ingresado no es valido. Debe estar entre 1 y 10";
	FinSegun
FinSubProceso

SubProceso funcion5()
	definir n como entero;	
	definir total como entero;
	
	total<-0;
	Escribir "Ingrese un numero, si desea deternerse, ingrese el numero 0:";
	Leer n;
	Mientras n!=0 Hacer
		total<-total+1;
		Leer n;
	FinMientras
	
	Escribir "se ingresaron ",total," numeros";
	
FinSubProceso

SubProceso funcion6()
	Definir nombre Como Caracter;
	Definir intentos como entero;
	intentos<-0;
	Escribir "Ingrese nombres con inicial J";
	Repetir
		Leer nombre;
		intentos<-intentos+1;
	Hasta Que nombre="juan"
	Escribir "Ganaste!!! lo lograste al ",intentos," intento.";
FinSubProceso

SubProceso funcion7()	
	Definir nombres como caracter;
	Definir n Como Caracter;
	Dimension nombres[10];
	Definir i Como Entero;
	Definir j como entero;
	
	Escribir "ingrese 10 nombres:";
	
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Leer n;
		nombres[i]<-n;
	FinPara
	
	Definir existe como logico;
	Escribir "Nombres repetidos:";
	Para i<-0 Hasta 9 Con Paso 1 Hacer		
		Para j<-0 Hasta i Con Paso 1 Hacer
			Si nombres[i]=nombres[j] y i<>j Entonces
				Escribir nombres[i]," | ", Sin Saltar;
			FinSi
		FinPara
	FinPara
	
FinSubProceso

SubProceso funcion8()
	Definir cantidad como entero;
	Escribir "Cuanto alumnos con en Talento digital?";
	leer cantidad;
	Definir nombre como caracter;
	Definir alumnos como caracter;
	Dimension alumnos[cantidad];
	Definir i como entero;
	
	Escribir "Ingrese el nombre de los ",cantidad," alumnos";
	Para i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Leer nombre;
		alumnos[i]<-nombre;
	FinPara
	
	Escribir "Lista:";
	Definir max como entero;
	max<-0;
	Para i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		
		Si max%5=0 Entonces
			Escribir "";
		FinSi
		Escribir alumnos[i]," ", Sin Saltar;
		max<-max+1;
	FinPara
	
	
FinSubProceso

SubProceso funcion9()
	Definir cant como entero;
	Escribir "Ingrese cantidad de alumnos:";
	leer cant;
	
	Definir i Como Entero;
	definir j como entero;
	
	Definir alumnos como caracter;
	Dimension alumnos[cant];
	Definir matrizAlumnos como caracter;
	Dimension matrizAlumnos[cant,3];
	
	Definir nombre como caracter;
	Definir dato como caracter;
	Definir fono como caracter;
	Definir email como caracter;
	
	Para i<-0 Hasta cant-1 Con Paso 1 Hacer
		Escribir "Ingrese nombre del alumno ",i+1;
		Leer nombre;
		alumnos[i]<-nombre;
		Escribir "Ingrse apellido, fono y email en cada linea";
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			Leer dato;
			matrizAlumnos[i,j]<-dato;
		FinPara
	FinPara
	Definir contador como entero;
	contador<-0;
	Para i<-0 Hasta cant-1 Con Paso 1 Hacer
		Escribir i+1,".-Nombre: ",alumnos[i], " ", Sin Saltar;
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			
			Escribir matrizAlumnos[i,j]," ", Sin Saltar;
			si j=2 Entonces
				Escribir "";
			FinSi
		FinPara
	FinPara
	
FinSubProceso

	