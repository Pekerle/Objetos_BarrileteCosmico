import medioDeTransporte.*

class PreferenciaDeTransporte{
	method elegirMedio(listaDeTransportes,unDinero)
}
object empresarial inherits PreferenciaDeTransporte{
	override method elegirMedio(listaDeTransportes,unDinero){
		return listaDeTransportes.min({unTransporte=>unTransporte.cuantoTarda()})
	}
}

object estudiantil inherits PreferenciaDeTransporte{
	override method elegirMedio(listaDeTransportes,unDinero){
		const listaPagable = listaDeTransportes.filter({unTransporte => unTransporte.costoKM() < unDinero})
		return listaPagable.min({unTransporte=>unTransporte.cuantoTarda()})
	}
}

object grupoFamiliar inherits PreferenciaDeTransporte{
	override method elegirMedio(listaDeTransportes,unDinero){
		return listaDeTransportes.anyOne()
	}
}