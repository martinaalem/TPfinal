Algoritmo TPfinal
	Escribir '-------------------------------------------------------------------------'
	Escribir '---Este programa está diseñado para llevar un buen control de los datos'
	Escribir 'sobre su empresa, lleva el control de los productos vendidos por sucursal---'
	Escribir '-------------------------------------------------------------------------'
	
	Dimensionar Precios(10)
	Escribir '1) Se necesita ingresar el precio de los productos'
	Para producto <- 1 Hasta 10 Hacer
		Escribir 'Dar precio del producto', ' ', producto
		Leer Precios[producto]
	FinPara
	
	Escribir '2) Se necesita ingresar los datos de los productos vendidos por sucursal'
	Dimensionar sucursal(10, 4)
	Para numsucursal <- 1 Hasta 4 Hacer
		Escribir 'Para la sucursal', ' ', numsucursal
		Para producto <- 1 Hasta 10 Hacer
			Escribir 'Dar cantidad de unidades vendidas del producto', ' ', producto
			Leer sucursal[producto, numsucursal]
		FinPara
	FinPara
	
	Dimensionar RecaudacionesSucursales(4)
	Para numsucursal <- 1 Hasta 4 Hacer
		suma <- 0
		Para producto <- 1 Hasta 10 Hacer
			suma <- suma + sucursal[producto, numsucursal] * Precios[producto]
		FinPara
		RecaudacionesSucursales[numsucursal] <- suma 
		Escribir 'La recaudación de la sucursal', ' ', numsucursal, ' es: ', suma
	FinPara
	
	Repetir
		Escribir 'Si desea ver la cantidad total vendida por alguna sucursal marque 1'
		Leer opcion
		Escribir 'Dar número de sucursal de la que desea ver los totales'
		Leer numsucur
		contproducto <- 1
		suma <- 0
		Para producto <- 1 Hasta 10 Hacer
			suma <- suma + sucursal[producto, numsucur]
		FinPara
		Escribir 'La cantidad vendida de la sucursal', ' ', numsucur, ' es de: ', suma
	Hasta Que opcion <> 1
	
	suma <- 0
	Repetir
		Escribir 'Si desea ver la recaudación total de la empresa marque 1'
		Leer opcion
		Para numsucursal <- 1 Hasta 4 Hacer
			suma <- suma + RecaudacionesSucursales[numsucursal]
		FinPara
		Escribir 'La recaudación total de la empresa es: ', suma
	Hasta Que opcion <> 1
	
	mayor <- 0
	Repetir
		Escribir 'Si desea ver la sucursal que mayor recaudación obtuvo marque 1'
		Leer opcion
		Para numsucursal <- 1 Hasta 4 Hacer
			Si RecaudacionesSucursales[numsucursal] > mayor Entonces
				mayor <- RecaudacionesSucursales[numsucursal]
			FinSi
		FinPara
		Escribir 'La sucursal que obtuvo mayor recaudación es: ', mayor
	Hasta Que opcion <> 1
	
FinAlgoritmo