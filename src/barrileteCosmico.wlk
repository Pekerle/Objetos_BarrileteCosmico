import destinos.*
import usuarios.*

object barrileteCosmico {
	const usuarios=[pabloHari]
	const destinos=#{garlicsSea,silversSea,lastToninas,goodAirs}
	
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
	method destinos(){
		return destinos
	}
}
