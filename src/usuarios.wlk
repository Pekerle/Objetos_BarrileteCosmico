import localidades.*
import mediosDeTransporte.*

class Usuario {
	const usuario
	var localidadOrigen
	var dinero
	var viajes
	var usuariosSeguidos
	
	method dinero(){
		return dinero
	}
	method viajes(){
		return viajes
	}
	method viajarADestino(unViaje, medioTransporte){
		if(dinero>unViaje.costoTotal(localidadOrigen, medioTransporte))
		{
			dinero-=unViaje.costoTotal(localidadOrigen, medioTransporte)
			viajes.add(unViaje)
			localidadOrigen = unViaje
		}
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
}

const pabloHari = new Usuario (
	usuario="PHari",
	dinero=1500,
	viajes=[lastToninas,goodAirs],
	usuariosSeguidos=[],
	localidadOrigen = garlicsSea
)