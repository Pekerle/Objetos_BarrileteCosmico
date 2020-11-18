class MedioDeTransporte {
	method cuantoTarda()
	method costoKM()
}

object avion inherits MedioDeTransporte{
	const turbinas = #{new Turbina(impulsoAdicional = 10)}
		
	override method costoKM(){
		return turbinas.sum({turbina=>turbina.impulsoAdicional()});
	}
	override method cuantoTarda(){
		return 25	
	}
}

class Turbina {
	const impulsoAdicional
	method impulsoAdicional(){
		return impulsoAdicional
	}
}

object micro inherits MedioDeTransporte{
	override method costoKM(){
		return 5000
	}
	override method cuantoTarda(){
		return 40	
	}
}

object tren inherits MedioDeTransporte{
	override method costoKM(){
		return 1429
	} 
	override method cuantoTarda(){
		return 30	
	}
}

object barco inherits MedioDeTransporte{
	const probabilidadDeChocar = 2
	override method costoKM(){
		return probabilidadDeChocar*1000
	}
	override method cuantoTarda(){
		return 10	
	}
}