class MetodoPago {
	
	method precioSegunMetodo(venta) {
		//Por defecto no aplica ningun recargo
		return venta.precioTotal()
	}
}

object conTarjeta inherits MetodoPago{
	var cantidadCuotas
	const coeficiente = 1
	
	method modificarCuotas(cantCuotas) {
		cantidadCuotas = cantCuotas
	}
	
	override method precioSegunMetodo(venta) {
		return venta.precioTotal() + (cantidadCuotas * coeficiente + self.aplicarRecargo(venta))
	}
	
	method aplicarRecargo(venta) = venta.prendas().map({unaPrenda => unaPrenda.calcularPrecio() * 0.1}).sum()
}

object efectivo inherits MetodoPago{
	
}
