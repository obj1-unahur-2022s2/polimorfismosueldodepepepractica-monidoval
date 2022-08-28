import categorias.*
import bonos.*
import pepe.*

object sofia {
	var categoria = cadete
	var bonoResultado = bonoNulo
	
	method categoria(unaCategoria) {categoria = unaCategoria}	
	method bonoResultado(unBono) {bonoResultado = unBono}	
	
	method sueldoNeto() { return categoria.neto() * 1.3 }
		
	method sueldo() {return 
		self.sueldoNeto() +
		bonoResultado.monto(self)				
		}
}

object roque {
	var bonoResultado = bonoNulo
	method bonoResultado(unBono) {bonoResultado = unBono}
	
	method sueldoNeto() { return 28000 }
		
	method sueldo() {return 
		self.sueldoNeto() +
		bonoResultado.monto(self) + 9000
		}
}
object ernesto{
	var companiero = pepe
	var bonoPresentismo = bonoNulo
	var cantidadDeFaltas = 0
	
	method companiero(unCompaniero){companiero = unCompaniero}
	method companiero(){return companiero}
	method cantidadDeFaltas(unaCantidad) {cantidadDeFaltas =unaCantidad}
	method cantidadDeFaltas() { return cantidadDeFaltas }
	method bonoPresentismo(unBono) {bonoPresentismo = unBono}
	
	method sueldoNeto() {return companiero.sueldoNeto()}
	
	method sueldo() {return 
		self.sueldoNeto() +
		bonoPresentismo.monto(self)
		}		
}