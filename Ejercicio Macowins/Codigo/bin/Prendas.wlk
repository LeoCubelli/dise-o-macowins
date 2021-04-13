import TipoPrenda.*
import EstadoPrenda.*

class Prenda {
	var property estado
	var property tipo
	var property precioPropio
	
	method calcularPrecio() = estado.calcularPrecio(self);
}
