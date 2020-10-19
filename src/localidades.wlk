import mediosDeTransporte.*

class Localidad {
	var costo
	var equipaje
	var ubicacionKM
	
	method costoDestino(){
		return costo
	}
	method costoTransporte(otraLocalidad, medioTransporte) {
		return self.distanciaALocalidad(otraLocalidad) * medioTransporte.costoKM()
	}
	method costoTotal(otraLocalidad, medioTransporte){
		return self.costoDestino() + self.costoTransporte(otraLocalidad, medioTransporte)
	}
	method ubicacionKM(){
		return ubicacionKM
	}
	method ubicacionKM(nuevaUbicacionKM){
		ubicacionKM = nuevaUbicacionKM
	}
	method distanciaALocalidad(otraLocalidad){
		return (ubicacionKM - otraLocalidad.ubicacionKM()).abs()
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

const garlicsSea = new Localidad(
	costo=2500,
	equipaje=["Caña de Pescar","Piloto"],
	ubicacionKM = 0
)

const silversSea = new Localidad (
	costo=1350,
	equipaje=["Protector Solar","Equipo de Buceo"],
	ubicacionKM = 0
)

const lastToninas = new Localidad (
	costo=3500,
	equipaje=["Vacuna Gripal","Vacuna B","Necronomicon"],
	ubicacionKM = 0
)

const goodAirs = new Localidad (
	costo=1500,
	equipaje=["Cerveza","Protector Solar"],
	ubicacionKM = 0
)
