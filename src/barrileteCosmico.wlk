import localidad.*
import medioDeTransporte.*
import viaje.*
import usuario.*

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
		const destinosImportantes=self.destinosImportantes()
		return destinosImportantes.any({unDestino=>unDestino.esDestinoPeligroso()})
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
			medioDeTransporte = self.elegirMedioTransporte(usuario)
		)
		self.cobrarAUsuario(usuario, viaje)
	}
	
	method cobrarAUsuario(usuario,viaje){
		if(usuario.puedePagar(viaje.costo())){
			usuario.pagar(viaje.costo())
			usuario.agregarViaje(viaje)
		}
	}
	method elegirMedioTransporte(unUsuario){
		const unaPreferencia = unUsuario.preferenciaDeTransporte()
		return unaPreferencia.elegirMedio(mediosDeTransporte, unUsuario.dinero())
	}
}