object garlicsSea {
	
	var costo=2500
	const equipaje=["Caña de Pescar","Piloto"]
	
	method costo(){
		return costo
	}
	method costo(unCosto){
		costo=unCosto
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
		return false
	}
}
object silversSea {
	
	var costo=1350
	const equipaje=["Protector Solar","Equipo de Buceo"]

	method costo(){
		return costo
	}
	method costo(unCosto){
		costo=unCosto
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
object lastToninas{
	
	var costo=3500
	const equipaje=["Vacuna Gripal","Vacuna B","Necronomicon"]
	
	method costo(){
		return costo
	}
	method costo(unCosto){
		costo=unCosto
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
object goodAirs {
	
	var costo=1500
	const equipaje=["Cerveza","Protector Solar"]
	
	method costo(){
		return costo
	}	
	method costo(unCosto){
		costo=unCosto
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
