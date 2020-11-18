import localidad.*
import medioDeTransporte.*
import viaje.*
import usuario.*
import preferenciaDeTransporte.*

object barrileteCosmico {
	const usuarios = [pabloHari]
	const destinos = #{garlicsSea,silversSea,lastToninas,goodAirs}
	const mediosDeTransporte = #{avion,tren,micro,barco}
	
	method destinosImportantes(){
		return destinos.filter({destino=>destino.esDestinoImportante()})
	}
	method aplicarDescuento(unDescuento){
		destinos.forEach({unDestino=>unDestino.aplicarDescuento(unDescuento)})
	}
	method esEmpresaExtrema(){
		return self.destinosImportantes().any({unDestino=>unDestino.esDestinoPeligroso()})
	}
	method conocerCarta(){
		return destinos
	}
	method usuarios(){
		return usuarios
	}
	method mediosDeTransporte(){
		return mediosDeTransporte
	}
	method prepararViaje(usuario, destino){
		
		const viaje = new Viaje (
			localidadOrigen = usuario.localidadOrigen(),
			localidadDestino = destino,
			medioDeTransporte = usuario.transporteQueElige(mediosDeTransporte)
		)
		usuario.pagar(viaje)
	}
}