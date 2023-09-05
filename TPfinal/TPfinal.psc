Algoritmo TPfinal
	Escribir '-------------------------------------------------------------------------'
	Escribir '---Este prpgrama esta diseñado para llevar un buen control de los datos";
	Escribir "sobre su empresa,lleva el control de los productos vendidos por sucursal---';
	Escribir '-------------------------------------------------------------------------'
	Dimensionar Precios(10)
	Escribir '1)se necesita ingresar el precio de los productos'
	contproductos <- 1
	Para producto<-1 Hasta 10 Hacer
		Escribir 'Dar precio del producto', ' ', contproductos
		Leer Precios[producto]
		contproductos <- contproductos+1
	FinPara
	Escribir '2-Se necesita que ingrese los datos de los productos vendidos por sucursal'
	Dimensionar sucursal(10,4)
	contsucursal <- 1
	Para numsucursal<-1 Hasta 4 Hacer
		Escribir 'Para la sucursal', ' ', contsucursal
		cont <- 1
		Para producto<-1 Hasta 10 Hacer
			Escribir 'dar cantidad de unidades vendidas del producto', ' ', cont
			Leer sucursal[producto,numsucursal]
			cont <- cont+1
		FinPara
		contsucursal <- contsucursal+1
	FinPara
	Dimensionar Recaudacionessursales(4)
	Para s<-1 Hasta 4 Hacer
		suma <- 0
		Para producto<-1 Hasta 10 Hacer
			Recaudacionessursales[numsucursal] <- suma+sucursal[producto,numsucursal]*Precios[producto]
		FinPara
		Escribir suma
	FinPara
	Repetir
		Escribir 'si desea ver la cantidad total vendida por alguna surcursal marque 1'
		Leer opcion
		Escribir 'Dar numero de sucursal de la que desea ver los totales'
		Leer numsucur
		contproducto <- 1
		Para producto<-1 Hasta 10 Hacer
			Escribir 'la cantidad vendida de la sucursal', ' ', numsucursal, 'es de: '
			Escribir Recaudacionessursales[numsucur]
		FinPara
	Hasta Que opcion<>1
	suma <- 0
	Repetir
		Escribir 'si desea ver la recadacion total de la empresa marque 1'
		Leer opcion
		Para numsucursal<-1 Hasta 4 Hacer
			suma <- suma+Recaudacionessursales[numsucursal]
		FinPara
		Escribir 'la recaudacion total de la empresa es: ', suma
	Hasta Que opcion<>1
	mayor <- 0
	Repetir
		Escribir 'si desea ver la sucursal que mayor recaudacion obtuvo marque 1'
		Leer opcion
		Para numsucursal<-1 Hasta 4 Hacer
			Si Recaudacionessursales[numsucursal]>mayor Entonces
				mayor <- Recaudacionessursales[numsucursal]
			FinSi
		FinPara
		Escribir 'la sucursal que obtuvo mayor recaudacion es: ', mayor
	Hasta Que opcion<>1
FinAlgoritmo
