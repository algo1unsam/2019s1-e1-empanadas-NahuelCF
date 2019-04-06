object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var dinerototal = 0
	var deuda = 0
	//var = balance
	//method totalDinero() = balance.max(0)
	//method totalDeuda() = -balance.min(0)
	//method cobrarSueldo(){
	//	balance += self.sueldo()}
	//
	//method gastar(cuanto){
	//	balance -= cuanto()}
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		if(sueldo >= deuda){
			dinerototal = sueldo - deuda // o self.sueldo()
			deuda = 0
		}
		else{
			deuda = deuda - sueldo // tamb
			dinerototal = 0
		}
	}
	method gastar(cantidad){
		if(deuda + cantidad >= dinerototal){
			deuda = deuda + cantidad - dinerototal
			dinerototal = 0
		}
		else{
			dinerototal -= (deuda + cantidad)
			deuda = 0 
		}
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
