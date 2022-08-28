
object gerente {
	method neto() { return 15000 } 
}

object cadete {
	method neto() {return 20000}
}
object vendedor{
	var hayMuchasVentas = false
	method neto() {return 
		if (hayMuchasVentas) {16000 * 1.25}
		else {16000}
	}
	method activarAumentoPorMuchasVentas(){
		hayMuchasVentas = true		
	}
	method desactivarAumentoPorMuchasVentas(){
		hayMuchasVentas = false
	}
}
object medioTiempo{
	var categoriaBase = cadete

	method categoriaBase(categoria){
		categoriaBase = categoria
	}
	method categoriaBase(){ return categoriaBase}
	method neto() {return
		categoriaBase.neto() /  2}
}