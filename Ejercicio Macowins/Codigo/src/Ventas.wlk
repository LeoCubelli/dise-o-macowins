import Prendas.*
import EstadoPrenda.*
import TipoPrenda.*
import MetodosPago.*

class Venta {
	const property prendas = []
	const property fecha = new Date()
	const metodoPago
	
	method agregarPrenda(prenda) {
		prendas.add(prenda)
	}	
	
	method precioTotal() = prendas.sum({unaPrenda => unaPrenda.calcularPrecio()})
	
}