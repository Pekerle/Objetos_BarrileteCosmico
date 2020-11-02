class MedioDeTransporte {
	const cuantoTarda
	
	method cuantoTarda(){
		return cuantoTarda
	}
	method costoKM()
}

class Avion inherits MedioDeTransporte{
	var turbinas= #{}
	override method costoKM(){
		return turbinas.sum({turbina=>turbina.impulsoAdicional()});
	}
}

class Turbina {
	const impulsoAdicional
	method impulsoAdicional(){
		return impulsoAdicional
	}
}

class Micro inherits MedioDeTransporte{
	override method costoKM(){
		return 5000
	}
}

class Tren inherits MedioDeTransporte{
	override method costoKM(){
		return 1429
	} 
}

class Barco inherits MedioDeTransporte{
	var probabilidadDeChocar 
	override method costoKM(){return probabilidadDeChocar*1000}
}

const turbina= new Turbina(
	impulsoAdicional = 10
)

const avion= new Avion(
	cuantoTarda = 25,
	turbinas=#{turbina}
)

const micro = new Micro(
	cuantoTarda = 40
)

const tren = new Tren(
	cuantoTarda = 30
)

const barco = new Barco(
	cuantoTarda = 10,
	probabilidadDeChocar = 2
)
