import medioDeTransporte.*

class Localidad {
	var costo
	var equipaje
	var ubicacionKM
	
	method costoDestino(){
		return costo
	}
	method ubicacionKM(){
		return ubicacionKM
	}
	method ubicacionKM(unosKM){
		ubicacionKM = unosKM
	}
	method aplicarDescuento(unDescuento){
  		costo = costo-costo*unDescuento/100
  		self.agregarEquipaje("Certificado de descuento")
	} 
	method agregarEquipaje(unObjeto){
		equipaje.add(unObjeto)
	}
	method equipaje(){
		return equipaje
	}
	method esDestinoImportante(){
		return costo>2000
	}
	method esDestinoPeligroso(){
		return equipaje.any({unosItems => self.esUnaVacuna(unosItems)})
	}
	method esUnaVacuna(unItem){
		return unItem.contains("Vacuna") 
	}
}

class Playa inherits Localidad{
	override method esDestinoPeligroso(){
		return false
	}
}

class Montania inherits Localidad{
	var altura
	override method esDestinoPeligroso(){
		if(altura>5000)
			return true
		else
			return super()
	}
	override method esDestinoImportante(){
		return true
	}
}

class CiudadHistorica inherits Localidad{
	var cantidadDeMuseos
	
	override method esDestinoPeligroso(){
		return !equipaje.contains("Seguro de asistencia al viajero")
	}
	override method esDestinoImportante(){
		return cantidadDeMuseos > 3 && super()
	}
}

const garlicsSea = new Localidad(
	costo=2500,
	equipaje = ["Caña de Pescar","Piloto"],
	ubicacionKM = 0
)

const silversSea = new Localidad (
	costo=1350,
	equipaje = ["Protector Solar","Equipo de Buceo"],
	ubicacionKM = 0
)

const lastToninas = new Localidad (
	costo = 3500,
	equipaje = ["Vacuna Gripal","Vacuna B","Necronomicon"],
	ubicacionKM = 0
)

const goodAirs = new Localidad (
	costo=1500,
	equipaje = ["Cerveza","Protector Solar"],
	ubicacionKM = 0
)