import Prendas.*
import TipoPrenda.*

class Estado {
	method calcularPrecio(prenda) = prenda.precioPropio()
}

object nueva inherits Estado {
}

object promocion inherits Estado {
	var valorFijo = 50
	
	method modificarValor(nuevoValor) {
		valorFijo = nuevoValor;
	}
	override method calcularPrecio(prenda) = prenda.precioPropio() - valorFijo
}

object liquidacion inherits Estado {
	override method calcularPrecio(prenda) = prenda.precioPropio() * 0.5
}