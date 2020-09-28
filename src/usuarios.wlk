import destinos.*

object pabloHari {
	const usuario="PHari"
	const destinosConocidos=[lastToninas,goodAirs]
	const usuariosSeguidos=[]
	var dinero=1500
	
	method dinero(){
		return dinero
	}
	method destinosConocidos(){
		return destinosConocidos
	}
	method volarAUnDestino(unDestino){
		if(dinero>unDestino.costo())
		{
			dinero-=unDestino.costo()
			destinosConocidos.add(unDestino)
		}
		else{}
	}
	method obtenerKM(){
		return destinosConocidos.sum({destino=>destino.costo()/10})
	}
	method seguirUsuario(unUsuario){
		usuariosSeguidos.add(unUsuario)
		unUsuario.serSeguido(self)	
	}
	method serSeguido(unUsuario){
		usuariosSeguidos.add(unUsuario)
	}
}
