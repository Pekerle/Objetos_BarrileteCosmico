import localidad.*
import medioDeTransporte.*
import viaje.*
import preferenciaDeTransporte.*

class Usuario {
	const property usuario
	var property localidadOrigen
	var property dinero
	var property viajes
	var usuariosSeguidos
	const property preferenciaDeTransporte
	
	method pagar(unViaje){
		if(dinero > unViaje.costo()){
			dinero -= unViaje.costo()
			self.agregarViaje(unViaje)
		}
		else{
			throw new NoTieneDineroSuficienteException(message = "La cantidad de dinero es insuficiente")
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
	method agregarViaje(unViaje){
		viajes.add(unViaje.localidadDestino())
		localidadOrigen = unViaje.localidadDestino()
	}
	method transporteQueElige(mediosDeTransporte){
		return preferenciaDeTransporte.elegirMedio(mediosDeTransporte, dinero)
	}
}

class NoTieneDineroSuficienteException inherits Exception{}

const pabloHari = new Usuario (
	usuario="PHari",
	dinero=1500,
	viajes=[lastToninas,goodAirs],
	usuariosSeguidos=[],
	localidadOrigen = garlicsSea,
	preferenciaDeTransporte = estudiantil
)
