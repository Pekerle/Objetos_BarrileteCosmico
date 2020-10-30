import localidad.*
import medioDeTransporte.*

class Usuario {
	const usuario
	var localidadOrigen
	var dinero
	var viajes
	var usuariosSeguidos
	
	method dinero(){
		return dinero
	}
	method pagar(unMonto){
		dinero -= unMonto
	}
	method viajes(){
		return viajes
	}
	method obtenerKM(){
		return viajes.sum({viaje=>viaje.costoDestino()/10})
	}
	method seguirUsuario(unUsuario){
		usuariosSeguidos.add(unUsuario)
		unUsuario.serSeguido(self)	
	}
	method serSeguido(unUsuario){
		usuariosSeguidos.add(unUsuario)
	}
	method localidadOrigen(){
		return localidadOrigen
	}
	method agregarViaje(unViaje){
		viajes.add(unViaje.localidadDestino())
		localidadOrigen = unViaje.localidadDestino()
	}
}

const pabloHari = new Usuario (
	usuario="PHari",
	dinero=1500,
	viajes=[lastToninas,goodAirs],
	usuariosSeguidos=[],
	localidadOrigen = garlicsSea
)