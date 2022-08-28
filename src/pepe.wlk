import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { return cantidadDeFaltas }
	method categoria(unaCategoria) {categoria = unaCategoria}
	method bonoPresentismo(unBono) {bonoPresentismo = unBono}
	method bonoResultado(unBono) {bonoResultado = unBono}
	method cantidadDeFaltas(unaCantidad) {cantidadDeFaltas =unaCantidad}
	
	method sueldoNeto() { return categoria.neto() }
		
	method sueldo() {return 
		self.sueldoNeto() +
		bonoPresentismo.monto(self) + 
		bonoResultado.monto(self)
				
			}

	}
	

