import localidad.*
import medioDeTransporte.*

class Viaje {
	const localidadOrigen
	const localidadDestino
	const medioDeTransporte
	
	method localidadDestino(){
		return localidadDestino
	}
	method distanciaALocalidad(){
		return (localidadOrigen.ubicacionKM() - localidadDestino.ubicacionKM()).abs()
	}
	method costoTransporte() {
		return (self.distanciaALocalidad() * medioDeTransporte.costoKM())
	}
	method costo(){
		return localidadDestino.costoDestino() + self.costoTransporte()		
	}
}

const viajeGenerico = new Viaje (
	localidadOrigen = garlicsSea,
	localidadDestino = silversSea,
	medioDeTransporte = avion
)