import pepe.*
import personas.*

object bonoPorcentaje {
	method monto(empleado) { return empleado.sueldoNeto() * 10 / 100 }
}


object bonoMontoFijo {
	method monto(empleado) = 800
	
}


object bonoPresentismoNormal {
	method monto (empleado){return 
		if (empleado.cantidadDeFaltas() == 0) {2000}
		else if (empleado.cantidadDeFaltas() == 1) {1000}
		else {0}		
	}
}
object bonoPresentismoAjuste{
	method monto (empleado){return 
	if (empleado.cantidadDeFaltas() == 0) {100}
	else {0}	
}
}

object bonoPresentismoDemagogico{
	method monto (empleado){return 
	if (empleado.sueldoNeto()< 18000) {500}
	else {300}	
}	
	
}

object bonoNulo {
	method monto(empleado) { return 0 } 
}

