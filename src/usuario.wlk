import localidad.*
import medioDeTransporte.*

class Usuario {
	const usuario
	var localidadOrigen
	var dinero
	var viajes
	var usuariosSeguidos
	var preferenciaDeTransporte
	
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
	method preferenciaDeTransporte(unaPreferencia){
		preferenciaDeTransporte=unaPreferencia
	}
	method preferenciaDeTransporte(){
		return preferenciaDeTransporte
	}
	method puedePagar(unMonto){
		return self.dinero()>unMonto
	}
}
class PreferenciaDeTransporte{
	method elegirMedio(listaDeTransportes,unDinero)
}
object empresarial inherits PreferenciaDeTransporte{
	override method elegirMedio(listaDeTransportes,unDinero){
		return listaDeTransportes.min({unMedio=>unMedio.cuantoTarda()})
	}
}

object estudiantil inherits PreferenciaDeTransporte{
	override method elegirMedio(listaDeTransportes,unDinero){
		const listaPagable=listaDeTransportes.filter({unMedio=>unMedio.costoKM()<unDinero})
		return listaPagable.min({unMedio=>unMedio.cuantoTarda()})
	}
}
object grupoFamiliar inherits PreferenciaDeTransporte{
	override method elegirMedio(listaDeTransportes,unDinero){
		return listaDeTransportes.anyOne()
	}
}

const pabloHari = new Usuario (
	usuario="PHari",
	dinero=1500,
	viajes=[lastToninas,goodAirs],
	usuariosSeguidos=[],
	localidadOrigen = garlicsSea,
	preferenciaDeTransporte = estudiantil
)
const armandoBarreda = new Usuario (
	usuario="Skinner",
	dinero=15000,
	viajes=[lastToninas,goodAirs],
	usuariosSeguidos=[],
	localidadOrigen = garlicsSea,
	preferenciaDeTransporte = empresarial
)
