import Prendas.*
import EstadoPrenda.*
import TipoPrenda.*
import MetodosPago.*
import Ventas.*

object macowins {
	const property ventas = []
	
	method gananciasDelDia(fecha) =
		ventas.filter({unaVenta => unaVenta.fecha() == fecha}).sum()
	
	
	method registarVenta(venta) {
		ventas.add(venta)
	}
}
