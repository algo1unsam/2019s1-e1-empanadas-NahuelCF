object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var dinerototal = 0
	var deuda = 0
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		
	}
	method gastar(cantidad){
		deuda += cantidad 
	}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return dinerototal
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var sueldo = 0
	var totalcobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
	
	method cobrarSueldo(){
		totalcobrado += self.sueldo()
	}
	
	method totalCobrado(){
		return totalcobrado
	}
	
 	
	method sueldo() { return cantidadEmpanadasVendidas * montoPorEmpanada }
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo() 
								empleado.cobrarSueldo()
	}
}
