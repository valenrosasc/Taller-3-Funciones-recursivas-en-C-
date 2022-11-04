//Univeridad Tecnologica De Pereira
//Ingenieria de Sistemas y Computacion
//Valentina Rosas Coral
//Este programa esta usando el tipo de notacion camel case

Algoritmo Taller_recursividad//Inicio del algoritmo para guardar la variable menu
	
	menu();
FinAlgoritmo
// 1.Hacer un procedimiento que muestre por pantalla n veces el mensaje de texto "hola".
SubProceso Punto1(n) 
	Escribir "hola";
	si n > 1 Entonces //Tenemos que ingresar un numero mayor o igual 1 
		punto1(n-1) //Se llama la funcion hasta que esta sea 0 o sea n - 1
	FinSi
FinSubProceso

//2.Hacer un procedimiento que escriba los primeros N números enteros.
SubProceso Punto2(n,i,)
	si n >= 0 Entonces //Ingresamos un numero mayor o igual a 0
		Escribir i
		Punto2(n-1,i+1)//Se llama la funcion hasta que esta sea 0 o sea n - 1 y se va sumando + 1 con el iterador
	FinSi
FinSubProceso

//3.Hacer un procedimiento que muestre la tabla de multiplicar de un número N.
SubProceso Punto3(n,i)
	r=n*i //Definimos que el resultado sea el numero por el iterador
	si i <= 10 Entonces //Imprime el proceso hasta el 10 (el numero ingresado multiplicado hasta 10)
		Escribir n,"x",i,"=",r
		punto3(n,i+1)//numero y el iterador + 1 para que se sume de 1 en 1 hasta 10
	FinSi
FinSubProceso

//4.Hacer un procedimiento que imprima las tablas de multiplicar desde 1 hasta N.
SubProceso Punto4(n,i,j)
	r = i*j
	si i <= n Entonces
		si j <= 10 Entonces
			Escribir i,"x",j,"=",r;
			Punto4(n,i,j+1);
		SiNo
			Escribir "";
			j = 0
			Punto4(n, i+1, j);
		FinSi
	FinSi
FinSubProceso

//5.Hacer una función que devuelva la sumatoria para los números enteros hasta N.
Funcion r <- Punto5 (n)
	Definir r Como Entero
	r = n;
	
	si n >= 1 Entonces
		r = r + Punto5(n-1)
	FinSi
Fin Funcion

//6.Hacer una función que devuelva el factorial de un número x.
Funcion f <- Punto6 (n)
	Definir f Como Entero
	
	si n = 0 Entonces
		f =1 
	SiNo
		si n >= 1 Entonces
			f=n*Punto6(n-1)
		FinSi
	FinSi
FinFuncion

// 7.Hacer una función que devuelva la sumatoria de los números dados por la expresión xx. Para todos los números entre 1 y n.
Funcion Expre<-Punto7(xx)
		Definir Expre Como Entero;
		
		si(xx=0)Entonces
			xx=1;
		SiNo
			si(xx>0)Entonces
				Expre=xx^xx+Punto7(xx-1);
			FinSi
		FinSi
FinFuncion

// 8.Implementar una función que eleve un número x a la y (siendo y un entero positivo).
funcion Ele<-Punto8(x,EleY)
	definir Ele Como Entero;
	
	si(EleY=0)Entonces
		Ele=1;
	SiNo
		si(EleY>0)Entonces
			Ele=x^EleY;
		FinSi
	FinSi
FinFuncion

// 9.Hacer una función que indique si un número x es par o impar.

Funcion PI <- Punto9(Z)
	Definir ParOImpar Como Entero;
	
	si(Z%2=0)Entonces
		Escribir "El número es par."
	SiNo
		Escribir "El número es Impar."
	FinSi
FinFuncion

// 10.Hacer un procedimiento que muestre por pantalla los submúltiplos de x (entero positivo).

SubProceso Punto10(X,Multiplos,Limite)
	
	si((Multiplos<=X)y(X%Multiplos=0))Entonces
		Escribir Limite;
		Punto10(X,Multiplos+1,Limite+1);
	SiNo
		si((X%Multiplos<>0)y (Multiplos<=X))Entonces
			Punto10(X,Multiplos+1,Limite+1)
		FinSi
	FinSi
FinSubProceso

// 11.Hacer una función booleana que indique si un número es primo o no.

Funcion PrimoNoPrimo<-Primo(A,B,Divisores)
	Definir PrimoNoPrimo Como Entero;
	
	si((A>=B)y(A%B=0))Entonces
		PrimoNoPrimo=Primo(A,B+1,Divisores+1)
	SiNo
		si((A>=B)y(A%B<>0))Entonces
			PrimoNoPrimo=Primo(A,B+1,Divisores)
		SiNo
			si(A<B y Divisores>2)Entonces
				Escribir "El número no es primo.";
			SiNo
				Escribir "El número es primo."
			FinSi
		FinSi
	FinSi
FinFuncion

// 13.
SubProceso Punto13(penultimo,ultimo,n)
	Definir actual Como Entero;
	Escribir ultimo ;
	si n> 1 Entonces
		actual = penultimo + ultimo; 	
		Punto13(ultimo,actual,n-1);
	FinSi
FinSubProceso

// 15.

Funcion x <- Punto15( a,b )
	Definir x Como Entero;
	si a == 0 Entonces
		x=b;
	SiNo
		x=Punto15(b%a,a);
	FinSi
Fin Funcion

//16.

SubProceso Punto16(n,ori,des,aux)
	si n == 1 Entonces
		Escribir "mueva el disco " , n , " desde la torre " , ori , " hasta la torre " , des ;
	SiNo
		Punto16(n-1,ori,aux,des);
		Escribir "mueva el disco " , n , " desde la torre " , ori , " hasta la torre " , des ;
		Punto16(n-1,aux,des,ori);
	FinSi
FinSubProceso

SubProceso menu() //Subproceso para llamar a las funciones
	Definir op Como Entero //Definimos opcion (op)
	Escribir "Punto1";
	Escribir "Punto2";
	Escribir "Punto3";
	Escribir "Punto4";
	Escribir "Punto5";
	Escribir "Punto6";
	Escribir "Punto7";
	Escribir "Punto8";
	Escribir "Punto9";
	Escribir "Punto10";
	Escribir "Punto11";
	Escribir "Punto12";
	Escribir "Punto13";
	Escribir "Punto15";
	Escribir "Punto16";
	Escribir "Punto17  (Salir)";
	
	leer op;//Leemos la opcion
	//Dependiendo de la opcion que se eliga se realizara la funcion que queremos
	
	si op = 1 Entonces //Indicamos que si opcion es 1 entonces se ejecuta la primera funcion
		Definir n como entero;
		Escribir "Ingrese un numero";
		leer n;
		Punto1(n);
	FinSi
	
	si op = 2 Entonces
		Definir n,i Como Entero
		Escribir "Ingrese un numero para mostrar los numeros que hay hasta este";
		leer n;
		Punto2(n,i)
		
	FinSi
	
	si op = 3 Entonces
		Definir n,i Como Entero
		Escribir "Ingrese un numero para mostrar sus tabla de multiplicar";
		leer n;
		Punto3(n,i)
	FinSi
	
	si op = 4 Entonces
		Definir n,i,j Como Entero
		Escribir "Ingrese un numero para mostrar hasta este las tablas de multiplicar";
		leer n;
		Punto4(n,i,j)
	FinSi
	
	si op = 5 Entonces
		Definir x,n Como Entero
		Escribir "Ingrese un numero";
		Leer n;
		x = Punto5(n);
		Escribir x;
	FinSi
	
	si op = 6 Entonces
		Definir x,n Como Entero
		Escribir "Ingrese un numero";
		leer n;
		x= Punto6(n)
		Escribir x;
	FinSi
	
	si op = 7 Entonces
		Definir xx, SumElevado como Entero;
		
		Escribir "Ingrese un número: ";
		leer xx;
		
		SumElevado=Punto7(xx);
		Escribir SumElevado;
		
	FinSi
	
	si op = 8 Entonces
		Definir x,EleY,Elevad Como Entero;
		
		Escribir "Digite el número base: ";
		Leer x;
		Escribir "Digite el exponente de la base: ";
		Leer EleY;
		
		Elevad=Punto8(x,EleY);
		
		Escribir "El resultado es= ",Elevad;
		Escribir "";
		menu();
		
	FinSi
	
	si op = 9 Entonces
		Definir Z,PoI Como Entero;
		
		Escribir "Ingrese un número: ";
		Leer Z;
		
		PoI=Punto9(Z);
		Escribir ""
		menu();
	FinSi
	
	si op = 10 Entonces
	    Definir X,Multiplos,Limite Como Entero;
			
	    Escribir "Ingrese el valor del número para encontrar los respectivos submultiplos. "
		leer X;
			
		Punto10(X,1,1);
		Escribir ""
		menu();
	FinSi
	
	si op = 11 Entonces
		definir A,B,Divisores, PrimoONO Como Entero;
		
		Escribir "Ingrese un número: ";
		Leer A;
		
		PrimoONO=Primo(A,1,0);
		Escribir "";
		menu();
	FinSi
	
	si op = 13 Entonces
		definir n Como Entero;
		Escribir "hasta ingrese n: ";
		leer n;
		Punto13(0,1,n);
		menu();
	FinSi
	
	si op = 15 Entonces
		definir a,b,x Como Entero;
		Escribir "Ingrese el primero numero: ";
		leer a;
		Escribir "ingrese el segundo numerom :";
		leer b;
		x=Punto15(a,b);
		Escribir "El maximo comun divisor de los dos numeros es: ",x;
		menu();
	FinSi
	
	si  op = 16 Entonces
		definir n,ori,des,aux como entero;
		ori=1;//el numero de ori,des y auxsignifica el numero de torre
		des=2;
		aux=3;
		Escribir "Por favor ingrese el numero de anillos: ";
		leer n;
		Punto16(n,ori,aux,des);
		menu();
	FinSi
	
    si  op = 17 Entonces
	Escribir "Adios";
    FinSi
	
	
FinSubProceso
